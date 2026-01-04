@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '##GENERATED ZVIDEO'
define root view entity ZR_VIDEO
  as select from zvideo
{
  key video_uuid as VideoUUID,
  title as Title,
  url as Url,
  description as Description,
  @Semantics.user.createdBy: true
  local_created_by as LocalCreatedBy,
  @Semantics.systemDateTime.createdAt: true
  local_created_at as LocalCreatedAt,
  @Semantics.user.localInstanceLastChangedBy: true
  local_last_changed_by as LocalLastChangedBy,
  @Semantics.systemDateTime.localInstanceLastChangedAt: true
  local_last_changed_at as LocalLastChangedAt,
  @Semantics.systemDateTime.lastChangedAt: true
  last_changed_at as LastChangedAt
  
}
