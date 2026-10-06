.class public abstract Lcom/miui/common/card/models/BaseCardModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/common/card/models/BaseCardModel$LayoutTypeNotConfiguredException;
    }
.end annotation


# static fields
.field public static final COMMONLY_USED_COLUM_COUNT:I = 0x3

.field public static final COMMONLY_USED_COLUM_COUNT_SMALL_SCREEN_J18:I = 0x2

.field public static final LAYOUT_ID_TYPE_0:I = 0x0

.field public static final LAYOUT_ID_TYPE_1:I = 0x1

.field public static final LAYOUT_ID_TYPE_10:I = 0xa

.field public static final LAYOUT_ID_TYPE_11:I = 0xb

.field public static final LAYOUT_ID_TYPE_12:I = 0xc

.field public static final LAYOUT_ID_TYPE_13:I = 0xd

.field public static final LAYOUT_ID_TYPE_14:I = 0xe

.field public static final LAYOUT_ID_TYPE_15:I = 0xf

.field public static final LAYOUT_ID_TYPE_16:I = 0x10

.field public static final LAYOUT_ID_TYPE_17:I = 0x11

.field public static final LAYOUT_ID_TYPE_18:I = 0x12

.field public static final LAYOUT_ID_TYPE_19:I = 0x13

.field public static final LAYOUT_ID_TYPE_2:I = 0x2

.field public static final LAYOUT_ID_TYPE_20:I = 0x14

.field public static final LAYOUT_ID_TYPE_21:I = 0x15

.field public static final LAYOUT_ID_TYPE_22:I = 0x16

.field public static final LAYOUT_ID_TYPE_23:I = 0x17

.field public static final LAYOUT_ID_TYPE_24:I = 0x18

.field public static final LAYOUT_ID_TYPE_25:I = 0x19

.field public static final LAYOUT_ID_TYPE_26:I = 0x1a

.field public static final LAYOUT_ID_TYPE_27:I = 0x1b

.field public static final LAYOUT_ID_TYPE_28:I = 0x1c

.field public static final LAYOUT_ID_TYPE_29:I = 0x1d

.field public static final LAYOUT_ID_TYPE_3:I = 0x3

.field public static final LAYOUT_ID_TYPE_30:I = 0x1e

.field public static final LAYOUT_ID_TYPE_31:I = 0x1f

.field public static final LAYOUT_ID_TYPE_32:I = 0x20

.field public static final LAYOUT_ID_TYPE_33:I = 0x21

.field public static final LAYOUT_ID_TYPE_34:I = 0x22

.field public static final LAYOUT_ID_TYPE_35:I = 0x23

.field public static final LAYOUT_ID_TYPE_36:I = 0x24

.field public static final LAYOUT_ID_TYPE_37:I = 0x25

.field public static final LAYOUT_ID_TYPE_38:I = 0x26

.field public static final LAYOUT_ID_TYPE_39:I = 0x27

.field public static final LAYOUT_ID_TYPE_4:I = 0x4

.field public static final LAYOUT_ID_TYPE_40:I = 0x28

.field public static final LAYOUT_ID_TYPE_41:I = 0x29

.field public static final LAYOUT_ID_TYPE_42:I = 0x2a

.field public static final LAYOUT_ID_TYPE_43:I = 0x2b

.field public static final LAYOUT_ID_TYPE_44:I = 0x2c

.field public static final LAYOUT_ID_TYPE_45:I = 0x2d

.field public static final LAYOUT_ID_TYPE_46:I = 0x2e

.field public static final LAYOUT_ID_TYPE_47:I = 0x2f

.field public static final LAYOUT_ID_TYPE_48:I = 0x30

.field public static final LAYOUT_ID_TYPE_49:I = 0x31

.field public static final LAYOUT_ID_TYPE_5:I = 0x5

.field public static final LAYOUT_ID_TYPE_50:I = 0x32

.field public static final LAYOUT_ID_TYPE_51:I = 0x33

.field public static final LAYOUT_ID_TYPE_52:I = 0x34

.field public static final LAYOUT_ID_TYPE_53:I = 0x35

.field public static final LAYOUT_ID_TYPE_54:I = 0x36

.field public static final LAYOUT_ID_TYPE_55:I = 0x37

.field public static final LAYOUT_ID_TYPE_56:I = 0x38

.field public static final LAYOUT_ID_TYPE_57:I = 0x39

.field public static final LAYOUT_ID_TYPE_58:I = 0x3a

.field public static final LAYOUT_ID_TYPE_59:I = 0x3b

.field public static final LAYOUT_ID_TYPE_6:I = 0x6

.field public static final LAYOUT_ID_TYPE_60:I = 0x3c

.field public static final LAYOUT_ID_TYPE_61:I = 0x3d

.field public static final LAYOUT_ID_TYPE_62:I = 0x3e

.field public static final LAYOUT_ID_TYPE_63:I = 0x3f

.field public static final LAYOUT_ID_TYPE_64:I = 0x40

.field public static final LAYOUT_ID_TYPE_65:I = 0x41

.field public static final LAYOUT_ID_TYPE_7:I = 0x7

.field public static final LAYOUT_ID_TYPE_8:I = 0x8

.field public static final LAYOUT_ID_TYPE_9:I = 0x9

.field public static final LAYOUT_ID_TYPE_NOT_CONFIGURED:I = -0x1

.field private static final TEMPLATE_TYPE:Landroid/util/SparseIntArray;

.field public static final TOOLBOX_COMMONLYUESD_DATASIZE:I = 0x6

.field public static final TYPE_ACTIVITY:Ljava/lang/String; = "003"

.field public static final TYPE_ADVERTISEMENT:Ljava/lang/String; = "001"

.field public static final TYPE_ADVERTISEMENT_TEST:Ljava/lang/String; = "0010"

.field public static final TYPE_CRAD:Ljava/lang/String; = "006"

.field public static final TYPE_FUNCTION:Ljava/lang/String; = "002"

.field public static final TYPE_LINE:Ljava/lang/String; = "005"

.field public static final TYPE_NEWS:Ljava/lang/String; = "004"


# instance fields
.field public button:Ljava/lang/String;

.field private canAutoScroll:Z

.field public canRrfreshFunctStatus:Z

.field private currentIndex:I

.field public dataId:Ljava/lang/String;

.field private defaultStatShow:Z

.field public icon:Ljava/lang/String;

.field private isFoldDevice:Z

.field private isOverseaChannel:Z

.field private language:Ljava/lang/String;

.field protected transient layoutId:I

.field public negativeButtonText:Ljava/lang/String;

.field public noConvertView:Z

.field public positiveButtonText:Ljava/lang/String;

.field private screenSize:I

.field public spannedTitle:Landroid/text/Spanned;

.field public subVisible:Z

.field public summary:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    const v1, 0x7f0e00ec

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00df

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00dd

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d4

    const/4 v2, 0x5

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00ed

    const/4 v2, 0x6

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e8

    const/4 v2, 0x7

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d3

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e2

    const/16 v2, 0x9

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d1

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d7

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d9

    const/16 v2, 0xc

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e7

    const/16 v2, 0xd

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0496

    const/16 v2, 0xe

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d5

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0485

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0488

    const/16 v2, 0x11

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0487

    const/16 v2, 0x12

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0490

    const/16 v2, 0x13

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e6

    const/16 v2, 0x14

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00cf

    const/16 v2, 0x15

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00d0

    const/16 v2, 0x16

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00ee

    const/16 v2, 0x17

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e9

    const/16 v2, 0x18

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00dc

    const/16 v2, 0x19

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00db

    const/16 v2, 0x1a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00ef

    const/16 v2, 0x1b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e048d

    const/16 v2, 0x1c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e048e

    const/16 v2, 0x1d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0491

    const/16 v2, 0x1e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e048f

    const/16 v2, 0x1f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0171

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e016f

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0170

    const/16 v2, 0x22

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0269

    const/16 v2, 0x23

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0274

    const/16 v2, 0x24

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0275

    const/16 v2, 0x25

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00f0

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e041c

    const/16 v2, 0x27

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e041e

    const/16 v2, 0x28

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0420

    const/16 v2, 0x29

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e041a

    const/16 v2, 0x2a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0421

    const/16 v2, 0x2b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e049a

    const/16 v2, 0x2c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0494

    const/16 v2, 0x2d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e3

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00e5

    const/16 v2, 0x2f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e00f1

    const/16 v2, 0x30

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0493

    const/16 v2, 0x31

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0172

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0495

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0499

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e049b

    const/16 v2, 0x35

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e049f

    const/16 v2, 0x36

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026a

    const/16 v2, 0x37

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026b

    const/16 v2, 0x38

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026c

    const/16 v2, 0x39

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026d

    const/16 v2, 0x3a

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026e

    const/16 v2, 0x3b

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e026f

    const/16 v2, 0x3c

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0270

    const/16 v2, 0x3d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0271

    const/16 v2, 0x3e

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e049c

    const/16 v2, 0x3f

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e024a

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    const v1, 0x7f0e0272

    const/16 v2, 0x41

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/common/card/models/BaseCardModel;->currentIndex:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->defaultStatShow:Z

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return-void
.end method

.method public static getLayoutType(I)I
    .locals 1

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p0}, Landroid/util/SparseIntArray;->get(I)I

    move-result p0

    return p0
.end method

.method public static getLayoutTypeCount()I
    .locals 1

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    return v0
.end method

.method public static getTemplateType()Landroid/util/SparseIntArray;
    .locals 1

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    return-object v0
.end method


# virtual methods
.method public createViewHolder(Landroid/view/View;)Lcom/miui/common/card/BaseViewHolder;
    .locals 1

    new-instance v0, Lcom/miui/common/card/BaseViewHolder;

    invoke-direct {v0, p1}, Lcom/miui/common/card/BaseViewHolder;-><init>(Landroid/view/View;)V

    return-object v0
.end method

.method public getButton()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BaseCardModel;->currentIndex:I

    return v0
.end method

.method public getDataId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return v0
.end method

.method public getLayoutIdType()I
    .locals 3

    sget-object v0, Lcom/miui/common/card/models/BaseCardModel;->TEMPLATE_TYPE:Landroid/util/SparseIntArray;

    iget v1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    if-eq v0, v2, :cond_0

    return v0

    :cond_0
    new-instance v0, Lcom/miui/common/card/models/BaseCardModel$LayoutTypeNotConfiguredException;

    const-string v1, "you must config your layout before you use it"

    invoke-direct {v0, v1}, Lcom/miui/common/card/models/BaseCardModel$LayoutTypeNotConfiguredException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getNegativeButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->negativeButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getPositiveButtonText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->positiveButtonText:Ljava/lang/String;

    return-object v0
.end method

.method public getScreenSize()I
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BaseCardModel;->screenSize:I

    return v0
.end method

.method public getSpannedTitle()Landroid/text/Spanned;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->spannedTitle:Landroid/text/Spanned;

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    return-object v0
.end method

.method public isCanAutoScroll()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->canAutoScroll:Z

    return v0
.end method

.method public isDefaultStatShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->defaultStatShow:Z

    return v0
.end method

.method public isFoldDevice()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->isFoldDevice:Z

    return v0
.end method

.method public isOverseaChannel()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public setButton(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->button:Ljava/lang/String;

    return-void
.end method

.method public setCanAutoScroll(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->canAutoScroll:Z

    return-void
.end method

.method public setCurrentIndex(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->currentIndex:I

    return-void
.end method

.method public setDataId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->dataId:Ljava/lang/String;

    return-void
.end method

.method public setDefaultStatShow(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->defaultStatShow:Z

    return-void
.end method

.method public setFoldDevice(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->isFoldDevice:Z

    return-void
.end method

.method public setIcon(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->icon:Ljava/lang/String;

    return-void
.end method

.method public setLanguage(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->language:Ljava/lang/String;

    return-void
.end method

.method public setLayoutId(I)V
    .locals 0

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->layoutId:I

    return-void
.end method

.method public setNegativeButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->negativeButtonText:Ljava/lang/String;

    return-void
.end method

.method public setOverseaChannel(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->isOverseaChannel:Z

    return-void
.end method

.method public setPositiveButtonText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->positiveButtonText:Ljava/lang/String;

    return-void
.end method

.method public setScreenSize(I)V
    .locals 1

    iget v0, p0, Lcom/miui/common/card/models/BaseCardModel;->screenSize:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/miui/common/card/models/BaseCardModel;->screenSize:I

    :cond_0
    return-void
.end method

.method public setSpannedTitle(Landroid/text/Spanned;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->spannedTitle:Landroid/text/Spanned;

    return-void
.end method

.method public setSubVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/common/card/models/BaseCardModel;->subVisible:Z

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->summary:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/common/card/models/BaseCardModel;->title:Ljava/lang/String;

    return-void
.end method

.method public startAutoScroll()V
    .locals 0

    return-void
.end method

.method public stopAutoScroll()V
    .locals 0

    return-void
.end method

.method public abstract validate()Z
.end method
