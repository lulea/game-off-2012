class SkyObject extends e3d.Object
  skyMeshes = []
  skyTextures = []
  
  @setTextures = (textures) ->
    for texture, index in textures
      skyTextures[index] = texture
  
  constructor: ->
    super()
    
    if skyMeshes.length is 0
      skyMeshes[0] = null
      loadJsonFile 'mod/sky.json', (sky) ->
        skyMeshes[0] = new e3d.Mesh(sky)
    
    @meshes = skyMeshes
    @textures = skyTextures
    @scale = [90, 90, 90]