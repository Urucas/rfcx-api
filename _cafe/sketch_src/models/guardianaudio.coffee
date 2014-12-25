# model guardianaudio model
c= console.log

module.exports= (sequelize, DataTypes)->
  GuardianAudio= sequelize.define 'GuardianAudio',
    guid:
      type: DataTypes.UUID
      defaultValue: DataTypes.UUIDV4
    measuered_at:
      type: DataTypes.DATE
      defaultValue: DataTypes.NOW
      validate:
        isDate: true
    size:
      type: DataTypes.INTEGER
      allowNull: true
      validate:
        isInt: true
        min: 0
    length:
      type: DataTypes.INTEGER
      allowNull: true
      validate:
        isInt: true
        min: 0
    ingestion_sqs_msg_id:
      type: DataTypes.UUID
      allowNull: true
      unique: true
  ,
    classMethods:
      associate: (models)->
        #associations can be defined here
  ,
    tableName: 'GuardianAudio'

  #return GuardianAudio