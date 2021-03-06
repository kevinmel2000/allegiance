#ifndef __IAGCCollectionImpl_h__
#define __IAGCCollectionImpl_h__

/////////////////////////////////////////////////////////////////////////////
// IAGCCollectionImpl.h : Declaration of the IAGCCollectionImpl class
// template.
//

#include "IAGCCommonImpl.h"


/////////////////////////////////////////////////////////////////////////////
// Interface Map Macro
//
// Classes derived from IAGCCollectionImpl should include this macro in their
// interface maps.
//
#define COM_INTERFACE_ENTRIES_IAGCCollectionImpl()                          \
    COM_INTERFACE_ENTRY(IAGCCollection)                                     \
    COM_INTERFACE_ENTRY(IDispatch)                                          \
    COM_INTERFACE_ENTRIES_IAGCCommonImpl()


/////////////////////////////////////////////////////////////////////////////
//
template <class T, class IGC, class ITF, class ITEMIGC, class ITEMITF,
  const GUID* plibid, class AGCIGC = IGC, class AGCITF = ITF,
  class ITEMAGCIGC = ITEMIGC, class ITEMAGCITF = ITEMITF>
class ATL_NO_VTABLE IAGCCollectionImpl:
  public IAGCCommonImpl<T, IGC, ITF, plibid, AGCIGC, AGCITF>
{
// Types
public:
  typedef IAGCCollectionImpl<T, IGC, ITF, ITEMIGC, ITEMITF, plibid, AGCIGC,
    AGCITF, ITEMAGCIGC, ITEMAGCITF> IAGCCollectionImplBase;

// IAGCCollection Interface Methods
public:
  STDMETHODIMP get_Count(long* pnCount)
  {
    assert(GetIGC());
    CLEAROUT(pnCount, (long)GetIGC()->n());
    return S_OK;
  }

  STDMETHODIMP get__NewEnum(IUnknown** ppunkEnum)
  {
    assert(GetIGC());

    // Create a new CComEnum enumerator object
    typedef CComObject<CComEnum<IEnumVARIANT, &IID_IEnumVARIANT, VARIANT,
      _Copy<VARIANT> > > CEnum;
    CEnum* pEnum = new CEnum;
    assert(NULL != pEnum);

    // Get the number of items in the collection
    long cTotal = GetIGC()->n();
    
    // Create a temporary array of variants
    std::vector<CComVariant> vecTemp(cTotal);

    // Get the IDispatch of each item of the collection
    for (CComVariant i(0L); V_I4(&i) < cTotal; ++V_I4(&i))
    {
      CComPtr<ITEMITF> spItem;
      RETURN_FAILED(get_Item(&i, &spItem));
      vecTemp[V_I4(&i)] = (IDispatch*)spItem;
    }

    // Initialize enumerator object with the temporary CComVariant vector
    HRESULT hr = pEnum->Init(vecTemp.begin(), vecTemp.end(), NULL, AtlFlagCopy);
    if (SUCCEEDED(hr))
      hr = pEnum->QueryInterface(IID_IEnumVARIANT, (void**)ppunkEnum);
    if (FAILED(hr))
      delete pEnum;

    // Return the last result
    return hr;
  }

// ITF Interface Methods
public:
  STDMETHODIMP get_Item(VARIANT* pvIndex, ITEMITF** ppItem)
  {
    // Initialize the [out] parameter
    CLEAROUT(ppItem, (ITEMITF*)NULL);

    // Attempt to convert the specified VARIANT to a long
    CComVariant var;
    RETURN_FAILED(VariantChangeType(&var, pvIndex, 0, VT_I4));
    long iIndex(V_I4(&var));

    // Bounds check
    assert(GetIGC());
    long iMax = GetIGC()->n();
    if (0 > iIndex || iIndex >= iMax)
      return E_INVALIDARG; 

    // Get the item's IGC pointer from the item's host pointer
    ITEMAGCIGC* pIGC =
      Host2Igc<ITEMIGC, ITEMAGCIGC>((*GetIGC())[iIndex]->data());

    // Return the item
    return GetAGCGlobal()->GetAGCObject(pIGC, __uuidof(ITEMITF),
      (void**)ppItem);
  }
};


/////////////////////////////////////////////////////////////////////////////

#endif //__IAGCCollectionImpl_h__

