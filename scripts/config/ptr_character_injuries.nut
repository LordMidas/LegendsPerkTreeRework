local gt = this.getroottable();

gt.Const.PTR.Injuries <- {};

gt.Const.PTR.Injuries.ForceUndeadInjuryExemptFlags <- ["ghoul", "ghost"];

gt.Const.PTR.Injuries.CuttingBodySkeleton <- [
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

gt.Const.PTR.Injuries.CuttingBodyUndead <- [
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
];

gt.Const.PTR.Injuries.CuttingHeadSkeleton <- [

];

gt.Const.PTR.Injuries.CuttingHeadUndead <- [
  {
    ID = "injury.deep_face_cut",
    Threshold = 0.5,
    Script = "injury/deep_face_cut_injury"
  },
];

gt.Const.PTR.Injuries.BluntBodySkeleton <- [
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

gt.Const.PTR.Injuries.BluntBodyUndead <- [
  {
    ID = "injury.sprained_ankle",
    Threshold = 0.25,
    Script = "injury/sprained_ankle_injury"
  },
];

gt.Const.PTR.Injuries.BluntBodySkeleton <- [
  {
    ID = "injury.fractured_skull",
    Threshold = 0.6,
    Script = "injury/fractured_skull_injury"
  }
];

gt.Const.PTR.Injuries.BluntBodyUndead <- [
  {
    ID = "injury.severe_concussion",
    Threshold = 0.5,
    Script = "injury/severe_concussion_injury"
  }
];
