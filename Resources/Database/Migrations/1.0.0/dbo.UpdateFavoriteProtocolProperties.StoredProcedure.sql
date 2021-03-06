USE [{DATABASE_NAME}]
GO
/****** Object:  StoredProcedure [dbo].[UpdateFavoriteProtocolProperties]    Script Date: 12/10/2012 22:16:53 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create PROCEDURE [dbo].[UpdateFavoriteProtocolProperties]
	(
	@FavoriteId int,
  @ProtocolProperties xml
	)
AS
	update Favorites 
  set
  ProtocolProperties = @ProtocolProperties
  where Id = @FavoriteId
GO
