.class public final Lcom/google/zxing/oned/Code128Reader;
.super Lcom/google/zxing/oned/OneDReader;
.source "Code128Reader.java"


# static fields
.field private static final CODE_CODE_A:I = 0x65

.field private static final CODE_CODE_B:I = 0x64

.field private static final CODE_CODE_C:I = 0x63

.field private static final CODE_FNC_1:I = 0x66

.field private static final CODE_FNC_2:I = 0x61

.field private static final CODE_FNC_3:I = 0x60

.field private static final CODE_FNC_4_A:I = 0x65

.field private static final CODE_FNC_4_B:I = 0x64

.field static final CODE_PATTERNS:[[I

.field private static final CODE_SHIFT:I = 0x62

.field private static final CODE_START_A:I = 0x67

.field private static final CODE_START_B:I = 0x68

.field private static final CODE_START_C:I = 0x69

.field private static final CODE_STOP:I = 0x6a

.field private static final MAX_AVG_VARIANCE:F = 0.25f

.field private static final MAX_INDIVIDUAL_VARIANCE:F = 0.7f


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 39
    const/16 v0, 0x6b

    new-array v0, v0, [[I

    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_1

    const/4 v3, 0x1

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_2

    const/4 v3, 0x2

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_3

    const/4 v3, 0x3

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_4

    const/4 v3, 0x4

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_5

    const/4 v3, 0x5

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    new-array v2, v1, [I

    fill-array-data v2, :array_7

    const/4 v3, 0x7

    aput-object v2, v0, v3

    new-array v2, v1, [I

    fill-array-data v2, :array_8

    const/16 v4, 0x8

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_9

    const/16 v4, 0x9

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_a

    const/16 v4, 0xa

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_b

    const/16 v4, 0xb

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_c

    const/16 v4, 0xc

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_d

    const/16 v4, 0xd

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_e

    const/16 v4, 0xe

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_f

    const/16 v4, 0xf

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_10

    const/16 v4, 0x10

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_11

    const/16 v4, 0x11

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_12

    const/16 v4, 0x12

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_13

    const/16 v4, 0x13

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_14

    const/16 v4, 0x14

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_15

    const/16 v4, 0x15

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_16

    const/16 v4, 0x16

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_17

    const/16 v4, 0x17

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_18

    const/16 v4, 0x18

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_19

    const/16 v4, 0x19

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1a

    const/16 v4, 0x1a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1b

    const/16 v4, 0x1b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1c

    const/16 v4, 0x1c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1d

    const/16 v4, 0x1d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1e

    const/16 v4, 0x1e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_1f

    const/16 v4, 0x1f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_20

    const/16 v4, 0x20

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_21

    const/16 v4, 0x21

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_22

    const/16 v4, 0x22

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_23

    const/16 v4, 0x23

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_24

    const/16 v4, 0x24

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_25

    const/16 v4, 0x25

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_26

    const/16 v4, 0x26

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_27

    const/16 v4, 0x27

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_28

    const/16 v4, 0x28

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_29

    const/16 v4, 0x29

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2a

    const/16 v4, 0x2a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2b

    const/16 v4, 0x2b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2c

    const/16 v4, 0x2c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2d

    const/16 v4, 0x2d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2e

    const/16 v4, 0x2e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_2f

    const/16 v4, 0x2f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_30

    const/16 v4, 0x30

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_31

    const/16 v4, 0x31

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_32

    const/16 v4, 0x32

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_33

    const/16 v4, 0x33

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_34

    const/16 v4, 0x34

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_35

    const/16 v4, 0x35

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_36

    const/16 v4, 0x36

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_37

    const/16 v4, 0x37

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_38

    const/16 v4, 0x38

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_39

    const/16 v4, 0x39

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3a

    const/16 v4, 0x3a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3b

    const/16 v4, 0x3b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3c

    const/16 v4, 0x3c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3d

    const/16 v4, 0x3d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3e

    const/16 v4, 0x3e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_3f

    const/16 v4, 0x3f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_40

    const/16 v4, 0x40

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_41

    const/16 v4, 0x41

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_42

    const/16 v4, 0x42

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_43

    const/16 v4, 0x43

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_44

    const/16 v4, 0x44

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_45

    const/16 v4, 0x45

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_46

    const/16 v4, 0x46

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_47

    const/16 v4, 0x47

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_48

    const/16 v4, 0x48

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_49

    const/16 v4, 0x49

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4a

    const/16 v4, 0x4a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4b

    const/16 v4, 0x4b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4c

    const/16 v4, 0x4c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4d

    const/16 v4, 0x4d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4e

    const/16 v4, 0x4e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_4f

    const/16 v4, 0x4f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_50

    const/16 v4, 0x50

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_51

    const/16 v4, 0x51

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_52

    const/16 v4, 0x52

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_53

    const/16 v4, 0x53

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_54

    const/16 v4, 0x54

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_55

    const/16 v4, 0x55

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_56

    const/16 v4, 0x56

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_57

    const/16 v4, 0x57

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_58

    const/16 v4, 0x58

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_59

    const/16 v4, 0x59

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5a

    const/16 v4, 0x5a

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5b

    const/16 v4, 0x5b

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5c

    const/16 v4, 0x5c

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5d

    const/16 v4, 0x5d

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5e

    const/16 v4, 0x5e

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_5f

    const/16 v4, 0x5f

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_60

    const/16 v4, 0x60

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_61

    const/16 v4, 0x61

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_62

    const/16 v4, 0x62

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_63

    const/16 v4, 0x63

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_64

    const/16 v4, 0x64

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_65

    const/16 v4, 0x65

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_66

    const/16 v4, 0x66

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_67

    const/16 v4, 0x67

    aput-object v2, v0, v4

    new-array v2, v1, [I

    fill-array-data v2, :array_68

    const/16 v4, 0x68

    aput-object v2, v0, v4

    new-array v1, v1, [I

    fill-array-data v1, :array_69

    const/16 v2, 0x69

    aput-object v1, v0, v2

    new-array v1, v3, [I

    fill-array-data v1, :array_6a

    const/16 v2, 0x6a

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    return-void

    :array_0
    .array-data 4
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x2
        0x1
        0x2
        0x2
    .end array-data

    :array_2
    .array-data 4
        0x2
        0x2
        0x2
        0x2
        0x2
        0x1
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x2
        0x3
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x2
        0x1
        0x3
        0x2
        0x2
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x1
        0x3
    .end array-data

    :array_7
    .array-data 4
        0x1
        0x2
        0x2
        0x3
        0x1
        0x2
    .end array-data

    :array_8
    .array-data 4
        0x1
        0x3
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_9
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x1
        0x3
    .end array-data

    :array_a
    .array-data 4
        0x2
        0x2
        0x1
        0x3
        0x1
        0x2
    .end array-data

    :array_b
    .array-data 4
        0x2
        0x3
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_c
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x3
        0x2
    .end array-data

    :array_d
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x3
        0x2
    .end array-data

    :array_e
    .array-data 4
        0x1
        0x2
        0x2
        0x2
        0x3
        0x1
    .end array-data

    :array_f
    .array-data 4
        0x1
        0x1
        0x3
        0x2
        0x2
        0x2
    .end array-data

    :array_10
    .array-data 4
        0x1
        0x2
        0x3
        0x1
        0x2
        0x2
    .end array-data

    :array_11
    .array-data 4
        0x1
        0x2
        0x3
        0x2
        0x2
        0x1
    .end array-data

    :array_12
    .array-data 4
        0x2
        0x2
        0x3
        0x2
        0x1
        0x1
    .end array-data

    :array_13
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x3
        0x2
    .end array-data

    :array_14
    .array-data 4
        0x2
        0x2
        0x1
        0x2
        0x3
        0x1
    .end array-data

    :array_15
    .array-data 4
        0x2
        0x1
        0x3
        0x2
        0x1
        0x2
    .end array-data

    :array_16
    .array-data 4
        0x2
        0x2
        0x3
        0x1
        0x1
        0x2
    .end array-data

    :array_17
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_18
    .array-data 4
        0x3
        0x1
        0x1
        0x2
        0x2
        0x2
    .end array-data

    :array_19
    .array-data 4
        0x3
        0x2
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_1a
    .array-data 4
        0x3
        0x2
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_1b
    .array-data 4
        0x3
        0x1
        0x2
        0x2
        0x1
        0x2
    .end array-data

    :array_1c
    .array-data 4
        0x3
        0x2
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_1d
    .array-data 4
        0x3
        0x2
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_1e
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x2
        0x3
    .end array-data

    :array_1f
    .array-data 4
        0x2
        0x1
        0x2
        0x3
        0x2
        0x1
    .end array-data

    :array_20
    .array-data 4
        0x2
        0x3
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_21
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x2
        0x3
    .end array-data

    :array_22
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_23
    .array-data 4
        0x1
        0x3
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_24
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x1
        0x3
    .end array-data

    :array_25
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_26
    .array-data 4
        0x1
        0x3
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_27
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x1
        0x3
    .end array-data

    :array_28
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_29
    .array-data 4
        0x2
        0x3
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_2a
    .array-data 4
        0x1
        0x1
        0x2
        0x1
        0x3
        0x3
    .end array-data

    :array_2b
    .array-data 4
        0x1
        0x1
        0x2
        0x3
        0x3
        0x1
    .end array-data

    :array_2c
    .array-data 4
        0x1
        0x3
        0x2
        0x1
        0x3
        0x1
    .end array-data

    :array_2d
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x2
        0x3
    .end array-data

    :array_2e
    .array-data 4
        0x1
        0x1
        0x3
        0x3
        0x2
        0x1
    .end array-data

    :array_2f
    .array-data 4
        0x1
        0x3
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_30
    .array-data 4
        0x3
        0x1
        0x3
        0x1
        0x2
        0x1
    .end array-data

    :array_31
    .array-data 4
        0x2
        0x1
        0x1
        0x3
        0x3
        0x1
    .end array-data

    :array_32
    .array-data 4
        0x2
        0x3
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_33
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x1
        0x3
    .end array-data

    :array_34
    .array-data 4
        0x2
        0x1
        0x3
        0x3
        0x1
        0x1
    .end array-data

    :array_35
    .array-data 4
        0x2
        0x1
        0x3
        0x1
        0x3
        0x1
    .end array-data

    :array_36
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x2
        0x3
    .end array-data

    :array_37
    .array-data 4
        0x3
        0x1
        0x1
        0x3
        0x2
        0x1
    .end array-data

    :array_38
    .array-data 4
        0x3
        0x3
        0x1
        0x1
        0x2
        0x1
    .end array-data

    :array_39
    .array-data 4
        0x3
        0x1
        0x2
        0x1
        0x1
        0x3
    .end array-data

    :array_3a
    .array-data 4
        0x3
        0x1
        0x2
        0x3
        0x1
        0x1
    .end array-data

    :array_3b
    .array-data 4
        0x3
        0x3
        0x2
        0x1
        0x1
        0x1
    .end array-data

    :array_3c
    .array-data 4
        0x3
        0x1
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_3d
    .array-data 4
        0x2
        0x2
        0x1
        0x4
        0x1
        0x1
    .end array-data

    :array_3e
    .array-data 4
        0x4
        0x3
        0x1
        0x1
        0x1
        0x1
    .end array-data

    :array_3f
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x2
        0x4
    .end array-data

    :array_40
    .array-data 4
        0x1
        0x1
        0x1
        0x4
        0x2
        0x2
    .end array-data

    :array_41
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x2
        0x4
    .end array-data

    :array_42
    .array-data 4
        0x1
        0x2
        0x1
        0x4
        0x2
        0x1
    .end array-data

    :array_43
    .array-data 4
        0x1
        0x4
        0x1
        0x1
        0x2
        0x2
    .end array-data

    :array_44
    .array-data 4
        0x1
        0x4
        0x1
        0x2
        0x2
        0x1
    .end array-data

    :array_45
    .array-data 4
        0x1
        0x1
        0x2
        0x2
        0x1
        0x4
    .end array-data

    :array_46
    .array-data 4
        0x1
        0x1
        0x2
        0x4
        0x1
        0x2
    .end array-data

    :array_47
    .array-data 4
        0x1
        0x2
        0x2
        0x1
        0x1
        0x4
    .end array-data

    :array_48
    .array-data 4
        0x1
        0x2
        0x2
        0x4
        0x1
        0x1
    .end array-data

    :array_49
    .array-data 4
        0x1
        0x4
        0x2
        0x1
        0x1
        0x2
    .end array-data

    :array_4a
    .array-data 4
        0x1
        0x4
        0x2
        0x2
        0x1
        0x1
    .end array-data

    :array_4b
    .array-data 4
        0x2
        0x4
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_4c
    .array-data 4
        0x2
        0x2
        0x1
        0x1
        0x1
        0x4
    .end array-data

    :array_4d
    .array-data 4
        0x4
        0x1
        0x3
        0x1
        0x1
        0x1
    .end array-data

    :array_4e
    .array-data 4
        0x2
        0x4
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_4f
    .array-data 4
        0x1
        0x3
        0x4
        0x1
        0x1
        0x1
    .end array-data

    :array_50
    .array-data 4
        0x1
        0x1
        0x1
        0x2
        0x4
        0x2
    .end array-data

    :array_51
    .array-data 4
        0x1
        0x2
        0x1
        0x1
        0x4
        0x2
    .end array-data

    :array_52
    .array-data 4
        0x1
        0x2
        0x1
        0x2
        0x4
        0x1
    .end array-data

    :array_53
    .array-data 4
        0x1
        0x1
        0x4
        0x2
        0x1
        0x2
    .end array-data

    :array_54
    .array-data 4
        0x1
        0x2
        0x4
        0x1
        0x1
        0x2
    .end array-data

    :array_55
    .array-data 4
        0x1
        0x2
        0x4
        0x2
        0x1
        0x1
    .end array-data

    :array_56
    .array-data 4
        0x4
        0x1
        0x1
        0x2
        0x1
        0x2
    .end array-data

    :array_57
    .array-data 4
        0x4
        0x2
        0x1
        0x1
        0x1
        0x2
    .end array-data

    :array_58
    .array-data 4
        0x4
        0x2
        0x1
        0x2
        0x1
        0x1
    .end array-data

    :array_59
    .array-data 4
        0x2
        0x1
        0x2
        0x1
        0x4
        0x1
    .end array-data

    :array_5a
    .array-data 4
        0x2
        0x1
        0x4
        0x1
        0x2
        0x1
    .end array-data

    :array_5b
    .array-data 4
        0x4
        0x1
        0x2
        0x1
        0x2
        0x1
    .end array-data

    :array_5c
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x4
        0x3
    .end array-data

    :array_5d
    .array-data 4
        0x1
        0x1
        0x1
        0x3
        0x4
        0x1
    .end array-data

    :array_5e
    .array-data 4
        0x1
        0x3
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_5f
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x1
        0x3
    .end array-data

    :array_60
    .array-data 4
        0x1
        0x1
        0x4
        0x3
        0x1
        0x1
    .end array-data

    :array_61
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x1
        0x3
    .end array-data

    :array_62
    .array-data 4
        0x4
        0x1
        0x1
        0x3
        0x1
        0x1
    .end array-data

    :array_63
    .array-data 4
        0x1
        0x1
        0x3
        0x1
        0x4
        0x1
    .end array-data

    :array_64
    .array-data 4
        0x1
        0x1
        0x4
        0x1
        0x3
        0x1
    .end array-data

    :array_65
    .array-data 4
        0x3
        0x1
        0x1
        0x1
        0x4
        0x1
    .end array-data

    :array_66
    .array-data 4
        0x4
        0x1
        0x1
        0x1
        0x3
        0x1
    .end array-data

    :array_67
    .array-data 4
        0x2
        0x1
        0x1
        0x4
        0x1
        0x2
    .end array-data

    :array_68
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x1
        0x4
    .end array-data

    :array_69
    .array-data 4
        0x2
        0x1
        0x1
        0x2
        0x3
        0x2
    .end array-data

    :array_6a
    .array-data 4
        0x2
        0x3
        0x3
        0x1
        0x1
        0x1
        0x2
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/google/zxing/oned/OneDReader;-><init>()V

    return-void
.end method

.method private static decodeCode(Lcom/google/zxing/common/BitArray;[II)I
    .locals 6
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .param p1, "counters"    # [I
    .param p2, "rowOffset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 216
    invoke-static {p0, p2, p1}, Lcom/google/zxing/oned/Code128Reader;->recordPattern(Lcom/google/zxing/common/BitArray;I[I)V

    .line 217
    const/high16 v0, 0x3e800000    # 0.25f

    .line 218
    .local v0, "bestVariance":F
    const/4 v1, -0x1

    .line 219
    .local v1, "bestMatch":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 219
    .local v2, "variance":F
    .local v3, "d":I
    :goto_0
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    array-length v4, v4

    if-ge v3, v4, :cond_1

    .line 220
    sget-object v4, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v4, v4, v3

    .line 221
    .local v4, "pattern":[I
    const v5, 0x3f333333    # 0.7f

    invoke-static {p1, v4, v5}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v5

    .line 222
    move v2, v5

    cmpg-float v5, v5, v0

    if-gez v5, :cond_0

    .line 223
    move v0, v2

    .line 224
    move v1, v3

    .line 219
    .end local v2    # "variance":F
    .end local v4    # "pattern":[I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 228
    .end local v3    # "d":I
    :cond_1
    if-ltz v1, :cond_2

    .line 229
    return v1

    .line 231
    :cond_2
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method

.method private static findStartPattern(Lcom/google/zxing/common/BitArray;)[I
    .locals 17
    .param p0, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;
        }
    .end annotation

    .line 170
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v1

    .line 171
    .local v1, "width":I
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/google/zxing/common/BitArray;->getNextSet(I)I

    move-result v3

    .line 173
    .local v3, "rowOffset":I
    const/4 v4, 0x0

    .line 174
    .local v4, "counterPosition":I
    const/4 v5, 0x6

    new-array v5, v5, [I

    .line 175
    .local v5, "counters":[I
    move v6, v3

    .line 176
    .local v6, "patternStart":I
    const/4 v7, 0x0

    .line 179
    .local v7, "isWhite":Z
    const/4 v8, 0x0

    move v8, v6

    const/4 v9, 0x0

    move v6, v4

    move v4, v3

    .line 179
    .local v4, "i":I
    .local v6, "counterPosition":I
    .local v8, "patternStart":I
    .local v9, "variance":F
    :goto_0
    if-ge v4, v1, :cond_6

    .line 180
    invoke-virtual {v0, v4}, Lcom/google/zxing/common/BitArray;->get(I)Z

    move-result v10

    xor-int/2addr v10, v7

    const/4 v11, 0x1

    if-eqz v10, :cond_0

    .line 181
    aget v10, v5, v6

    add-int/2addr v10, v11

    aput v10, v5, v6

    goto :goto_4

    .line 183
    :cond_0
    const/4 v10, 0x5

    if-ne v6, v10, :cond_4

    .line 184
    const/high16 v12, 0x3e800000    # 0.25f

    .line 185
    .local v12, "bestVariance":F
    const/4 v13, -0x1

    .line 186
    .local v13, "bestMatch":I
    const/16 v14, 0x67

    .line 186
    .local v14, "startCode":I
    :goto_1
    const/16 v15, 0x69

    if-gt v14, v15, :cond_2

    .line 187
    sget-object v15, Lcom/google/zxing/oned/Code128Reader;->CODE_PATTERNS:[[I

    aget-object v15, v15, v14

    const v10, 0x3f333333    # 0.7f

    invoke-static {v5, v15, v10}, Lcom/google/zxing/oned/Code128Reader;->patternMatchVariance([I[IF)F

    move-result v10

    .line 189
    move v9, v10

    cmpg-float v10, v10, v12

    if-gez v10, :cond_1

    .line 190
    move v10, v9

    .line 191
    .end local v12    # "bestVariance":F
    .local v10, "bestVariance":F
    move v12, v14

    .line 186
    .end local v9    # "variance":F
    .end local v13    # "bestMatch":I
    .local v12, "bestMatch":I
    move v13, v12

    move v12, v10

    .line 186
    .end local v10    # "bestVariance":F
    .local v12, "bestVariance":F
    .restart local v13    # "bestMatch":I
    :cond_1
    add-int/lit8 v14, v14, 0x1

    const/4 v10, 0x5

    goto :goto_1

    .line 195
    .end local v14    # "startCode":I
    .restart local v9    # "variance":F
    :cond_2
    const/4 v10, 0x2

    if-ltz v13, :cond_3

    sub-int v14, v4, v8

    div-int/2addr v14, v10

    sub-int v14, v8, v14

    .line 196
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v14

    invoke-virtual {v0, v14, v8, v2}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v14

    if-eqz v14, :cond_3

    .line 197
    .end local v9    # "variance":F
    const/4 v9, 0x3

    new-array v9, v9, [I

    aput v8, v9, v2

    aput v4, v9, v11

    aput v13, v9, v10

    return-object v9

    .line 199
    .restart local v9    # "variance":F
    :cond_3
    aget v14, v5, v2

    aget v15, v5, v11

    add-int/2addr v14, v15

    add-int/2addr v8, v14

    .line 200
    const/4 v14, 0x4

    invoke-static {v5, v10, v5, v2, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 201
    aput v2, v5, v14

    .line 202
    const/4 v10, 0x5

    aput v2, v5, v10

    .line 203
    add-int/lit8 v6, v6, -0x1

    .line 204
    .end local v12    # "bestVariance":F
    .end local v13    # "bestMatch":I
    goto :goto_2

    .line 205
    :cond_4
    add-int/lit8 v6, v6, 0x1

    .line 207
    :goto_2
    aput v11, v5, v6

    .line 208
    if-nez v7, :cond_5

    goto :goto_3

    :cond_5
    const/4 v11, 0x0

    :goto_3
    move v7, v11

    .line 179
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 211
    .end local v4    # "i":I
    .end local v9    # "variance":F
    :cond_6
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2
.end method


# virtual methods
.method public decodeRow(ILcom/google/zxing/common/BitArray;Ljava/util/Map;)Lcom/google/zxing/Result;
    .locals 37
    .param p1, "rowNumber"    # I
    .param p2, "row"    # Lcom/google/zxing/common/BitArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/google/zxing/common/BitArray;",
            "Ljava/util/Map<",
            "Lcom/google/zxing/DecodeHintType;",
            "*>;)",
            "Lcom/google/zxing/Result;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/zxing/NotFoundException;,
            Lcom/google/zxing/FormatException;,
            Lcom/google/zxing/ChecksumException;
        }
    .end annotation

    .line 239
    .local p3, "hints":Ljava/util/Map;, "Ljava/util/Map<Lcom/google/zxing/DecodeHintType;*>;"
    move/from16 v0, p1

    move-object/from16 v1, p2

    .line 239
    move-object/from16 v2, p3

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    sget-object v5, Lcom/google/zxing/DecodeHintType;->ASSUME_GS1:Lcom/google/zxing/DecodeHintType;

    invoke-interface {v2, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 241
    .local v5, "convertFNC1":Z
    :goto_0
    invoke-static/range {p2 .. p2}, Lcom/google/zxing/oned/Code128Reader;->findStartPattern(Lcom/google/zxing/common/BitArray;)[I

    move-result-object v6

    const/4 v7, 0x0

    move-object v8, v7

    .line 242
    .local v8, "startPatternInfo":[I
    move-object v8, v6

    const/4 v9, 0x2

    aget v6, v6, v9

    .line 244
    .local v6, "startCode":I
    new-instance v10, Ljava/util/ArrayList;

    const/16 v11, 0x14

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    .line 245
    .local v7, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object v7, v10

    int-to-byte v12, v6

    invoke-static {v12}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v12

    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    packed-switch v6, :pswitch_data_0

    .line 259
    move/from16 v27, v5

    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    .line 259
    .end local v5    # "convertFNC1":Z
    .end local v6    # "startCode":I
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v8    # "startPatternInfo":[I
    .local v27, "convertFNC1":Z
    .local v34, "startCode":I
    .local v35, "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .local v36, "startPatternInfo":[I
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v1

    throw v1

    .line 256
    .end local v27    # "convertFNC1":Z
    .end local v34    # "startCode":I
    .end local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .end local v36    # "startPatternInfo":[I
    .restart local v5    # "convertFNC1":Z
    .restart local v6    # "startCode":I
    .restart local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v8    # "startPatternInfo":[I
    :pswitch_0
    const/16 v10, 0x63

    .line 257
    .local v10, "codeSet":I
    goto :goto_1

    .line 253
    .end local v10    # "codeSet":I
    :pswitch_1
    const/16 v10, 0x64

    .line 254
    .restart local v10    # "codeSet":I
    goto :goto_1

    .line 250
    .end local v10    # "codeSet":I
    :pswitch_2
    const/16 v10, 0x65

    .line 251
    .restart local v10    # "codeSet":I
    nop

    .line 259
    :goto_1
    nop

    .line 262
    const/4 v12, 0x0

    .line 263
    .local v12, "done":Z
    const/4 v13, 0x0

    .line 265
    .local v13, "isNextShifted":Z
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14, v11}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v11, v14

    .line 267
    .local v11, "result":Ljava/lang/StringBuilder;
    aget v14, v8, v4

    .line 268
    .local v14, "lastStart":I
    aget v15, v8, v3

    .line 269
    .local v15, "nextStart":I
    const/4 v3, 0x6

    new-array v4, v3, [I

    .line 271
    .local v4, "counters":[I
    const/16 v16, 0x0

    .line 272
    .local v16, "lastCode":I
    const/16 v17, 0x0

    .line 273
    .local v17, "code":I
    move/from16 v18, v6

    .line 274
    .local v18, "checksumTotal":I
    const/16 v19, 0x0

    .line 275
    .local v19, "multiplier":I
    const/16 v20, 0x1

    .line 276
    .local v20, "lastCharacterWasPrintable":Z
    const/16 v21, 0x0

    .line 277
    .local v21, "upperMode":Z
    move/from16 v23, v10

    move v9, v14

    move/from16 v14, v16

    move/from16 v24, v21

    const/4 v10, 0x0

    const/16 v16, 0x0

    .line 279
    .end local v21    # "upperMode":Z
    .local v9, "lastStart":I
    .local v10, "shiftUpperMode":Z
    .local v14, "lastCode":I
    .local v16, "rawCodesSize":I
    .local v23, "codeSet":I
    .local v24, "upperMode":Z
    :goto_2
    if-nez v12, :cond_1e

    .line 281
    move/from16 v21, v13

    .line 282
    .local v21, "unshift":Z
    const/4 v13, 0x0

    .line 285
    move/from16 v14, v17

    .line 288
    invoke-static {v1, v4, v15}, Lcom/google/zxing/oned/Code128Reader;->decodeCode(Lcom/google/zxing/common/BitArray;[II)I

    move-result v3

    .line 290
    .end local v17    # "code":I
    .local v3, "code":I
    int-to-byte v2, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-interface {v7, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 293
    const/16 v2, 0x6a

    if-eq v3, v2, :cond_1

    .line 294
    const/16 v20, 0x1

    .line 298
    :cond_1
    if-eq v3, v2, :cond_2

    .line 299
    add-int/lit8 v19, v19, 0x1

    .line 300
    mul-int v17, v19, v3

    add-int v18, v18, v17

    .line 304
    :cond_2
    move v9, v15

    .line 305
    move/from16 v17, v16

    move/from16 v16, v15

    const/4 v15, 0x0

    .line 305
    .end local v15    # "nextStart":I
    .local v16, "nextStart":I
    .local v17, "rawCodesSize":I
    :goto_3
    const/4 v2, 0x6

    if-ge v15, v2, :cond_3

    .line 305
    .end local v17    # "rawCodesSize":I
    aget v17, v4, v15

    .line 306
    .local v17, "counter":I
    add-int v16, v16, v17

    .line 305
    add-int/lit8 v15, v15, 0x1

    const/16 v2, 0x6a

    goto :goto_3

    .line 310
    .local v17, "rawCodesSize":I
    :cond_3
    packed-switch v3, :pswitch_data_1

    .line 317
    move/from16 v15, v23

    packed-switch v15, :pswitch_data_2

    .line 478
    .end local v23    # "codeSet":I
    .local v15, "codeSet":I
    move-object/from16 v25, v4

    move/from16 v2, v24

    .line 478
    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .local v2, "upperMode":Z
    .local v25, "counters":[I
    goto/16 :goto_d

    .line 314
    .end local v2    # "upperMode":Z
    .end local v15    # "codeSet":I
    .end local v17    # "rawCodesSize":I
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    .restart local v23    # "codeSet":I
    .restart local v24    # "upperMode":Z
    :pswitch_3
    invoke-static {}, Lcom/google/zxing/FormatException;->getFormatInstance()Lcom/google/zxing/FormatException;

    move-result-object v2

    throw v2

    .line 320
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    .restart local v17    # "rawCodesSize":I
    :pswitch_4
    const/16 v2, 0x40

    if-ge v3, v2, :cond_5

    .line 321
    move/from16 v2, v24

    if-ne v10, v2, :cond_4

    .line 322
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    move-object/from16 v25, v4

    add-int/lit8 v4, v3, 0x20

    .line 322
    .end local v4    # "counters":[I
    .restart local v25    # "counters":[I
    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 324
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    :cond_4
    move-object/from16 v25, v4

    .line 324
    .end local v4    # "counters":[I
    .restart local v25    # "counters":[I
    add-int/lit8 v4, v3, 0x20

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 326
    :goto_4
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 327
    .end local v2    # "upperMode":Z
    .end local v25    # "counters":[I
    .restart local v4    # "counters":[I
    .restart local v24    # "upperMode":Z
    :cond_5
    move-object/from16 v25, v4

    move/from16 v2, v24

    .line 327
    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x60

    if-ge v3, v4, :cond_7

    .line 328
    if-ne v10, v2, :cond_6

    .line 329
    add-int/lit8 v4, v3, -0x40

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    .line 331
    :cond_6
    add-int/lit8 v4, v3, 0x40

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 333
    :goto_5
    const/4 v4, 0x0

    goto :goto_8

    .line 337
    :cond_7
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_8

    .line 338
    const/16 v20, 0x0

    .line 340
    :cond_8
    if-eq v3, v4, :cond_c

    packed-switch v3, :pswitch_data_3

    goto :goto_6

    .line 342
    :pswitch_5
    if-eqz v5, :cond_d

    .line 343
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_9

    .line 346
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 349
    :cond_9
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 358
    :pswitch_6
    if-nez v2, :cond_a

    if-eqz v10, :cond_a

    .line 359
    const/4 v2, 0x1

    .line 360
    const/4 v4, 0x0

    goto :goto_8

    .line 361
    :cond_a
    if-eqz v2, :cond_b

    if-eqz v10, :cond_b

    .line 362
    const/4 v2, 0x0

    .line 363
    const/4 v4, 0x0

    goto :goto_8

    .line 365
    :cond_b
    const/4 v4, 0x1

    .line 367
    .end local v10    # "shiftUpperMode":Z
    .local v4, "shiftUpperMode":Z
    goto :goto_8

    .line 373
    .end local v4    # "shiftUpperMode":Z
    .restart local v10    # "shiftUpperMode":Z
    :pswitch_7
    const/16 v23, 0x64

    .line 374
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_b

    .line 376
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    :pswitch_8
    const/16 v23, 0x63

    .line 377
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_b

    .line 369
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    :pswitch_9
    const/4 v4, 0x1

    .line 370
    .end local v13    # "isNextShifted":Z
    .local v4, "isNextShifted":Z
    const/16 v23, 0x64

    .line 371
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_9

    .line 356
    .end local v4    # "isNextShifted":Z
    .end local v23    # "codeSet":I
    .restart local v13    # "isNextShifted":Z
    .restart local v15    # "codeSet":I
    :pswitch_a
    goto/16 :goto_d

    .line 379
    :cond_c
    const/4 v12, 0x1

    .line 383
    :cond_d
    :goto_6
    goto/16 :goto_d

    .line 385
    .end local v2    # "upperMode":Z
    .end local v25    # "counters":[I
    .local v4, "counters":[I
    .restart local v24    # "upperMode":Z
    :pswitch_b
    move-object/from16 v25, v4

    move/from16 v2, v24

    .line 385
    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x60

    if-ge v3, v4, :cond_f

    .line 386
    if-ne v10, v2, :cond_e

    .line 387
    add-int/lit8 v4, v3, 0x20

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 389
    :cond_e
    add-int/lit8 v4, v3, 0x20

    add-int/lit16 v4, v4, 0x80

    int-to-char v4, v4

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 391
    :goto_7
    const/4 v4, 0x0

    .line 478
    .end local v2    # "upperMode":Z
    .restart local v24    # "upperMode":Z
    :goto_8
    move/from16 v24, v2

    move v10, v4

    goto/16 :goto_e

    .line 393
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    :cond_f
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_10

    .line 394
    const/16 v20, 0x0

    .line 396
    :cond_10
    if-eq v3, v4, :cond_14

    packed-switch v3, :pswitch_data_4

    goto :goto_a

    .line 398
    :pswitch_c
    if-eqz v5, :cond_15

    .line 399
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_11

    .line 402
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 405
    :cond_11
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_d

    .line 429
    :pswitch_d
    const/16 v23, 0x65

    .line 430
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto/16 :goto_b

    .line 414
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    :pswitch_e
    if-nez v2, :cond_12

    if-eqz v10, :cond_12

    .line 415
    const/4 v2, 0x1

    .line 416
    const/4 v4, 0x0

    goto :goto_8

    .line 417
    :cond_12
    if-eqz v2, :cond_13

    if-eqz v10, :cond_13

    .line 418
    const/4 v2, 0x0

    .line 419
    const/4 v4, 0x0

    goto :goto_8

    .line 421
    :cond_13
    const/4 v4, 0x1

    .line 423
    .end local v10    # "shiftUpperMode":Z
    .local v4, "shiftUpperMode":Z
    goto :goto_8

    .line 432
    .end local v4    # "shiftUpperMode":Z
    .restart local v10    # "shiftUpperMode":Z
    :pswitch_f
    const/16 v23, 0x63

    .line 433
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto :goto_b

    .line 425
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    :pswitch_10
    const/4 v4, 0x1

    .line 426
    .end local v13    # "isNextShifted":Z
    .local v4, "isNextShifted":Z
    const/16 v23, 0x65

    .line 427
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    nop

    .line 478
    .end local v2    # "upperMode":Z
    .end local v4    # "isNextShifted":Z
    .end local v23    # "codeSet":I
    .restart local v13    # "isNextShifted":Z
    .restart local v15    # "codeSet":I
    .restart local v24    # "upperMode":Z
    :goto_9
    move/from16 v24, v2

    move v13, v4

    goto :goto_c

    .line 412
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    :pswitch_11
    goto :goto_d

    .line 435
    :cond_14
    const/4 v12, 0x1

    .line 439
    :cond_15
    :goto_a
    goto :goto_d

    .line 441
    .end local v2    # "upperMode":Z
    .end local v25    # "counters":[I
    .local v4, "counters":[I
    .restart local v24    # "upperMode":Z
    :pswitch_12
    move-object/from16 v25, v4

    move/from16 v2, v24

    .line 441
    .end local v4    # "counters":[I
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    .restart local v25    # "counters":[I
    const/16 v4, 0x64

    if-ge v3, v4, :cond_17

    .line 442
    const/16 v4, 0xa

    if-ge v3, v4, :cond_16

    .line 443
    const/16 v4, 0x30

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 445
    :cond_16
    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 447
    :cond_17
    const/16 v4, 0x6a

    if-eq v3, v4, :cond_18

    .line 448
    const/16 v20, 0x0

    .line 450
    :cond_18
    if-eq v3, v4, :cond_1a

    packed-switch v3, :pswitch_data_5

    goto :goto_d

    .line 452
    :pswitch_13
    if-eqz v5, :cond_1b

    .line 453
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    if-nez v4, :cond_19

    .line 456
    const-string v4, "]C1"

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 459
    :cond_19
    const/16 v4, 0x1d

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_d

    .line 464
    :pswitch_14
    const/16 v23, 0x65

    .line 465
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    goto :goto_b

    .line 467
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    :pswitch_15
    const/16 v23, 0x64

    .line 468
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    nop

    .line 478
    .end local v2    # "upperMode":Z
    .end local v23    # "codeSet":I
    .restart local v15    # "codeSet":I
    .restart local v24    # "upperMode":Z
    :goto_b
    move/from16 v24, v2

    :goto_c
    move/from16 v15, v23

    goto :goto_e

    .line 470
    .end local v24    # "upperMode":Z
    .restart local v2    # "upperMode":Z
    :cond_1a
    const/4 v4, 0x1

    .line 478
    .end local v12    # "done":Z
    .local v4, "done":Z
    move/from16 v24, v2

    move v12, v4

    goto :goto_e

    .line 478
    .end local v2    # "upperMode":Z
    .end local v4    # "done":Z
    .restart local v12    # "done":Z
    .restart local v24    # "upperMode":Z
    :cond_1b
    :goto_d
    move/from16 v24, v2

    :goto_e
    if-eqz v21, :cond_1d

    .line 479
    const/16 v2, 0x65

    if-ne v15, v2, :cond_1c

    const/16 v2, 0x64

    nop

    .line 482
    .end local v15    # "codeSet":I
    .end local v21    # "unshift":Z
    .local v2, "codeSet":I
    :cond_1c
    move/from16 v23, v2

    goto :goto_f

    .line 482
    .end local v2    # "codeSet":I
    .restart local v15    # "codeSet":I
    :cond_1d
    move/from16 v23, v15

    .line 277
    .end local v15    # "codeSet":I
    .restart local v23    # "codeSet":I
    :goto_f
    move/from16 v15, v16

    move/from16 v16, v17

    move-object/from16 v4, v25

    move-object/from16 v2, p3

    move/from16 v17, v3

    const/4 v3, 0x6

    goto/16 :goto_2

    .line 484
    .end local v3    # "code":I
    .end local v25    # "counters":[I
    .local v4, "counters":[I
    .local v15, "nextStart":I
    .local v16, "rawCodesSize":I
    .local v17, "code":I
    :cond_1e
    move-object/from16 v25, v4

    move v3, v15

    move/from16 v15, v23

    move/from16 v2, v24

    .line 484
    .end local v4    # "counters":[I
    .end local v23    # "codeSet":I
    .end local v24    # "upperMode":Z
    .local v2, "upperMode":Z
    .local v3, "nextStart":I
    .local v15, "codeSet":I
    .restart local v25    # "counters":[I
    sub-int v4, v3, v9

    .line 489
    .local v4, "lastPatternSize":I
    invoke-virtual {v1, v3}, Lcom/google/zxing/common/BitArray;->getNextUnset(I)I

    move-result v3

    .line 490
    nop

    .line 491
    move/from16 v26, v2

    invoke-virtual/range {p2 .. p2}, Lcom/google/zxing/common/BitArray;->getSize()I

    move-result v2

    .line 491
    .end local v2    # "upperMode":Z
    .local v26, "upperMode":Z
    sub-int v21, v3, v9

    const/16 v22, 0x2

    div-int/lit8 v21, v21, 0x2

    move/from16 v27, v5

    add-int v5, v3, v21

    .line 491
    .end local v5    # "convertFNC1":Z
    .restart local v27    # "convertFNC1":Z
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 490
    const/4 v5, 0x0

    invoke-virtual {v1, v3, v2, v5}, Lcom/google/zxing/common/BitArray;->isRange(IIZ)Z

    move-result v2

    if-nez v2, :cond_1f

    .line 493
    .end local v16    # "rawCodesSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 497
    .restart local v16    # "rawCodesSize":I
    :cond_1f
    mul-int v2, v19, v14

    sub-int v2, v18, v2

    .line 499
    rem-int/lit8 v2, v2, 0x67

    if-eq v2, v14, :cond_20

    .line 500
    .end local v16    # "rawCodesSize":I
    invoke-static {}, Lcom/google/zxing/ChecksumException;->getChecksumInstance()Lcom/google/zxing/ChecksumException;

    move-result-object v2

    throw v2

    .line 504
    .restart local v16    # "rawCodesSize":I
    :cond_20
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    const/4 v5, 0x0

    move/from16 v21, v5

    .line 505
    .local v21, "resultLength":I
    move v5, v2

    .line 505
    .end local v21    # "resultLength":I
    .local v5, "resultLength":I
    if-nez v2, :cond_21

    .line 507
    .end local v16    # "rawCodesSize":I
    invoke-static {}, Lcom/google/zxing/NotFoundException;->getNotFoundInstance()Lcom/google/zxing/NotFoundException;

    move-result-object v2

    throw v2

    .line 512
    .restart local v16    # "rawCodesSize":I
    :cond_21
    if-lez v5, :cond_23

    if-eqz v20, :cond_23

    .line 513
    const/16 v2, 0x63

    if-ne v15, v2, :cond_22

    .line 514
    add-int/lit8 v2, v5, -0x2

    invoke-virtual {v11, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    goto :goto_10

    .line 516
    :cond_22
    add-int/lit8 v2, v5, -0x1

    invoke-virtual {v11, v2, v5}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 520
    :cond_23
    :goto_10
    const/4 v2, 0x1

    aget v21, v8, v2

    const/4 v2, 0x0

    aget v23, v8, v2

    add-int v2, v21, v23

    int-to-float v2, v2

    const/high16 v21, 0x40000000    # 2.0f

    div-float v2, v2, v21

    .line 521
    .local v2, "left":F
    int-to-float v1, v9

    move/from16 v28, v3

    int-to-float v3, v4

    .line 521
    .end local v3    # "nextStart":I
    .local v28, "nextStart":I
    div-float v3, v3, v21

    add-float/2addr v1, v3

    .line 523
    .local v1, "right":F
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    .line 524
    move/from16 v29, v3

    .line 524
    .end local v16    # "rawCodesSize":I
    .local v29, "rawCodesSize":I
    new-array v3, v3, [B

    .line 525
    .local v3, "rawBytes":[B
    const/16 v16, 0x0

    .line 525
    .local v16, "i":I
    :goto_11
    move/from16 v30, v16

    .line 525
    .end local v16    # "i":I
    .local v30, "i":I
    move/from16 v31, v4

    move/from16 v32, v5

    move/from16 v4, v29

    move/from16 v5, v30

    if-ge v5, v4, :cond_24

    .line 526
    .end local v29    # "rawCodesSize":I
    .end local v30    # "i":I
    .local v4, "rawCodesSize":I
    .local v5, "i":I
    .local v31, "lastPatternSize":I
    .local v32, "resultLength":I
    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    move/from16 v33, v4

    move-object/from16 v4, v16

    check-cast v4, Ljava/lang/Byte;

    .line 526
    .end local v4    # "rawCodesSize":I
    .local v33, "rawCodesSize":I
    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    aput-byte v4, v3, v5

    .line 525
    add-int/lit8 v16, v5, 0x1

    .line 525
    .end local v5    # "i":I
    .restart local v16    # "i":I
    move/from16 v4, v31

    move/from16 v5, v32

    move/from16 v29, v33

    goto :goto_11

    .line 529
    .end local v16    # "i":I
    .end local v33    # "rawCodesSize":I
    .restart local v4    # "rawCodesSize":I
    :cond_24
    move/from16 v33, v4

    .line 529
    .end local v4    # "rawCodesSize":I
    .restart local v33    # "rawCodesSize":I
    new-instance v4, Lcom/google/zxing/Result;

    .line 530
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move/from16 v34, v6

    const/4 v6, 0x2

    new-array v6, v6, [Lcom/google/zxing/ResultPoint;

    .line 530
    .end local v6    # "startCode":I
    .restart local v34    # "startCode":I
    move-object/from16 v35, v7

    new-instance v7, Lcom/google/zxing/ResultPoint;

    .line 530
    .end local v7    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    .restart local v35    # "rawCodes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Byte;>;"
    move-object/from16 v36, v8

    int-to-float v8, v0

    .line 530
    .end local v8    # "startPatternInfo":[I
    .restart local v36    # "startPatternInfo":[I
    invoke-direct {v7, v2, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v8, 0x0

    aput-object v7, v6, v8

    new-instance v7, Lcom/google/zxing/ResultPoint;

    int-to-float v8, v0

    invoke-direct {v7, v1, v8}, Lcom/google/zxing/ResultPoint;-><init>(FF)V

    const/4 v8, 0x1

    aput-object v7, v6, v8

    sget-object v7, Lcom/google/zxing/BarcodeFormat;->CODE_128:Lcom/google/zxing/BarcodeFormat;

    invoke-direct {v4, v5, v3, v6, v7}, Lcom/google/zxing/Result;-><init>(Ljava/lang/String;[B[Lcom/google/zxing/ResultPoint;Lcom/google/zxing/BarcodeFormat;)V

    .line 529
    return-object v4

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x67
        :pswitch_3
        :pswitch_3
        :pswitch_3
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x63
        :pswitch_12
        :pswitch_b
        :pswitch_4
    .end packed-switch

    :pswitch_data_3
    .packed-switch 0x60
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
    .end packed-switch

    :pswitch_data_4
    .packed-switch 0x60
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
    .end packed-switch

    :pswitch_data_5
    .packed-switch 0x64
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method
