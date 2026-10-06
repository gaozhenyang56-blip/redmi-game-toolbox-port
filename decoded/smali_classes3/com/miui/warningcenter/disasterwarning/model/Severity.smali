.class public final enum Lcom/miui/warningcenter/disasterwarning/model/Severity;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/warningcenter/disasterwarning/model/Severity;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/miui/warningcenter/disasterwarning/model/Severity;

.field public static final enum blue:Lcom/miui/warningcenter/disasterwarning/model/Severity;

.field public static final enum orange:Lcom/miui/warningcenter/disasterwarning/model/Severity;

.field public static final enum red:Lcom/miui/warningcenter/disasterwarning/model/Severity;

.field public static final enum yellow:Lcom/miui/warningcenter/disasterwarning/model/Severity;


# instance fields
.field private final accentColor:I

.field private final code:I

.field private final levelRes:I

.field private final nameRes:I


# direct methods
.method private static final synthetic $values()[Lcom/miui/warningcenter/disasterwarning/model/Severity;
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/miui/warningcenter/disasterwarning/model/Severity;

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/Severity;->blue:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/Severity;->yellow:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/Severity;->orange:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/miui/warningcenter/disasterwarning/model/Severity;->red:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 15

    new-instance v7, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const-string v1, "blue"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const v4, 0x7f060e50

    const v5, 0x7f121be5

    const v6, 0x7f121bfd

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcom/miui/warningcenter/disasterwarning/model/Severity;-><init>(Ljava/lang/String;IIIII)V

    sput-object v7, Lcom/miui/warningcenter/disasterwarning/model/Severity;->blue:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const-string v9, "yellow"

    const/4 v10, 0x1

    const/4 v11, 0x2

    const v12, 0x7f060e53

    const v13, 0x7f121c2b

    const v14, 0x7f121bfc

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/warningcenter/disasterwarning/model/Severity;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->yellow:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const-string v2, "orange"

    const/4 v3, 0x2

    const/4 v4, 0x4

    const v5, 0x7f060e51

    const v6, 0x7f121c06

    const v7, 0x7f121bfb

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/miui/warningcenter/disasterwarning/model/Severity;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->orange:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    new-instance v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    const-string v9, "red"

    const/4 v10, 0x3

    const/16 v11, 0x8

    const v12, 0x7f060e52

    const v13, 0x7f121c1d

    const v14, 0x7f121bfa    # 1.9421255E38f

    move-object v8, v0

    invoke-direct/range {v8 .. v14}, Lcom/miui/warningcenter/disasterwarning/model/Severity;-><init>(Ljava/lang/String;IIIII)V

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->red:Lcom/miui/warningcenter/disasterwarning/model/Severity;

    invoke-static {}, Lcom/miui/warningcenter/disasterwarning/model/Severity;->$values()[Lcom/miui/warningcenter/disasterwarning/model/Severity;

    move-result-object v0

    sput-object v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->$VALUES:[Lcom/miui/warningcenter/disasterwarning/model/Severity;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIII)V
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIII)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->code:I

    iput p4, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->accentColor:I

    iput p5, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->nameRes:I

    iput p6, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->levelRes:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/warningcenter/disasterwarning/model/Severity;
    .locals 1

    const-class v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;

    return-object p0
.end method

.method public static values()[Lcom/miui/warningcenter/disasterwarning/model/Severity;
    .locals 1

    sget-object v0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->$VALUES:[Lcom/miui/warningcenter/disasterwarning/model/Severity;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/warningcenter/disasterwarning/model/Severity;

    return-object v0
.end method


# virtual methods
.method public final getAccentColor()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->accentColor:I

    return v0
.end method

.method public final getCode()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->code:I

    return v0
.end method

.method public final getLevelRes()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->levelRes:I

    return v0
.end method

.method public final getNameRes()I
    .locals 1

    iget v0, p0, Lcom/miui/warningcenter/disasterwarning/model/Severity;->nameRes:I

    return v0
.end method
