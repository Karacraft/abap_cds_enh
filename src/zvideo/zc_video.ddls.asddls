@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: 'Projection View for ZR_VIDEO'
define root view entity ZC_VIDEO
  provider contract transactional_query
  as projection on ZR_VIDEO
{
  key VideoUUID,
  Title,
  Url,
  Description,
  LocalLastChangedAt
  
}
