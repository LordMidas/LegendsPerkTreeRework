local gt = this.getroottable();

gt.Const.Injury.PTRForceUndeadInjuryExemptFlags <- ["ghoul", "ghost"];

gt.Const.Injury.PTRCuttingBodySkeleton <- [
  {
    ID = "injury.cut_arm_sinew",
    Threshold = 0.25,
    Script = "injury/cut_arm_sinew_injury"
  },
  {
    ID = "injury.cut_arm",
    Threshold = 0.25,
    Script = "injury/cut_arm_injury"
  },
  {
    ID = "injury.split_hand",
    Threshold = 0.5,
    Script = "injury/split_hand_injury"
  },
  {
    ID = "injury.split_shoulder",
    Threshold = 0.5,
    Script = "injury/split_shoulder_injury"
  }
];

gt.Const.Injury.PTRCuttingBodyUndead <- clone this.Const.Injury.PTRCuttingBodySkeleton;
gt.Const.Injury.PTRCuttingBodyUndead.extend([
  {
    ID = "injury.deep_abdominal_cut",
    Threshold = 0.25,
    Script = "injury/deep_abdominal_cut_injury"
  },
  {
    ID = "injury.deep_chest_cut",
    Threshold = 0.5,
    Script = "injury/deep_chest_cut_injury"
  }
]);;

gt.Const.Injury.PTRCuttingHeadSkeleton <- [

];

gt.Const.Injury.PTRCuttingHeadUndead <- clone this.Const.Injury.PTRCuttingHeadSkeleton;
gt.Const.Injury.PTRCuttingHeadUndead.extend([
  {
    ID = "injury.deep_face_cut",
    Threshold = 0.5,
    Script = "injury/deep_face_cut_injury"
  },
]);

gt.Const.Injury.PTRBluntBodySkeleton <- [
  {
    ID = "injury.fractured_hand",
    Threshold = 0.25,
    Script = "injury/fractured_hand_injury"
  },
  {
    ID = "injury.crushed_finger",
    Threshold = 0.25,
    Script = "injury/crushed_finger_injury"
  },
  {
    ID = "injury.fractured_elbow",
    Threshold = 0.25,
    Script = "injury/fractured_elbow_injury"
  },
  {
    ID = "injury.dislocated_shoulder",
    Threshold = 0.5,
    Script = "injury/dislocated_shoulder_injury"
  },
  {
    ID = "injury.broken_arm",
    Threshold = 0.5,
    Script = "injury/broken_arm_injury"
  },
  {
    ID = "injury.smashed_hand",
    Threshold = 0.5,
    Script = "injury/smashed_hand_injury"
  },
  {
    ID = "injury.broken_leg",
    Threshold = 0.5,
    Script = "injury/broken_leg_injury"
  }
];

gt.Const.Injury.PTRBluntBodyUndead <- clone this.Const.Injury.PTRBluntBodySkeleton;
gt.Const.Injury.PTRBluntBodyUndead.extend([
  {
    ID = "injury.sprained_ankle",
    Threshold = 0.25,
    Script = "injury/sprained_ankle_injury"
  },
]);

gt.Const.Injury.PTRBluntHeadSkeleton <- [
  {
    ID = "injury.fractured_skull",
    Threshold = 0.6,
    Script = "injury/fractured_skull_injury"
  }
];

gt.Const.Injury.PTRBluntHeadUndead <- clone this.Const.Injury.PTRBluntHeadSkeleton;
gt.Const.Injury.PTRBluntHeadUndead.extend([
  {
    ID = "injury.severe_concussion",
    Threshold = 0.5,
    Script = "injury/severe_concussion_injury"
  }
]);

gt.Const.Injury.getArrayOfRelevantUndeadInjuries( _skill, _targetEntity, _hitInfo )
{
  local targetFlags = _targetEntity.getFlags();

  if (_hitInfo.BodyPart == this.Const.BodyPart.Body && _skill.m.InjuriesOnBody != null)
  {
    if (_skill.hasCuttingDamage())
    {
      injuries = targetFlags.has("skeleton") ? this.Const.Injury.PTRCuttingBodySkeleton : this.Const.Injury.PTRCuttingBodyUndead;
    }
    else if (_skill.hasBluntDamage())
    {
      injuries = targetFlags.has("skeleton") ? this.Const.Injury.PTRBluntBodySkeleton : this.Const.Injury.PTRBluntBodyUndead;
    }
  }
  else if (_hitInfo.BodyPart == this.Const.BodyPart.Head && _skill.m.InjuriesOnHead != null)
  {
    if (_skill.hasCuttingDamage())
    {
      injuries = targetFlags.has("skeleton") ? this.Const.Injury.PTRCuttingHeadSkeleton : this.Const.Injury.PTRCuttingHeadUndead;
    }
    else if (_skill.hasBluntDamage())
    {
      injuries = targetFlags.has("skeleton") ? this.Const.Injury.PTRBluntHeadSkeleton : this.Const.Injury.PTRBluntHeadUndead;
    }
  }

  return injuries;
}
