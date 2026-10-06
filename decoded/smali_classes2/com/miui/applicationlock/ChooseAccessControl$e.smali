.class final enum Lcom/miui/applicationlock/ChooseAccessControl$e;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/applicationlock/ChooseAccessControl$e;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum c:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field public static final enum d:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field public static final enum e:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field public static final enum f:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field public static final enum g:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field public static final enum h:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field private static final synthetic i:[Lcom/miui/applicationlock/ChooseAccessControl$e;


# instance fields
.field private a:I

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v1, "Continue"

    const/4 v2, 0x0

    const v3, 0x7f120cc3

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$e;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    new-instance v1, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v5, "ContinueDisabled"

    invoke-direct {v1, v5, v4, v3, v2}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v1, Lcom/miui/applicationlock/ChooseAccessControl$e;->d:Lcom/miui/applicationlock/ChooseAccessControl$e;

    new-instance v3, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v5, "Confirm"

    const/4 v6, 0x2

    const v7, 0x7f120cc2

    invoke-direct {v3, v5, v6, v7, v4}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v3, Lcom/miui/applicationlock/ChooseAccessControl$e;->e:Lcom/miui/applicationlock/ChooseAccessControl$e;

    new-instance v5, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v8, "ConfirmDisabled"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v7, v2}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v5, Lcom/miui/applicationlock/ChooseAccessControl$e;->f:Lcom/miui/applicationlock/ChooseAccessControl$e;

    new-instance v7, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v8, "Ok"

    const/4 v10, 0x4

    const v11, 0x104000a

    invoke-direct {v7, v8, v10, v11, v4}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v7, Lcom/miui/applicationlock/ChooseAccessControl$e;->g:Lcom/miui/applicationlock/ChooseAccessControl$e;

    new-instance v8, Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v11, "Gone"

    const/4 v12, 0x5

    const/4 v13, -0x1

    invoke-direct {v8, v11, v12, v13, v2}, Lcom/miui/applicationlock/ChooseAccessControl$e;-><init>(Ljava/lang/String;IIZ)V

    sput-object v8, Lcom/miui/applicationlock/ChooseAccessControl$e;->h:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/miui/applicationlock/ChooseAccessControl$e;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v9

    aput-object v7, v11, v10

    aput-object v8, v11, v12

    sput-object v11, Lcom/miui/applicationlock/ChooseAccessControl$e;->i:[Lcom/miui/applicationlock/ChooseAccessControl$e;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/applicationlock/ChooseAccessControl$e;->a:I

    iput-boolean p4, p0, Lcom/miui/applicationlock/ChooseAccessControl$e;->b:Z

    return-void
.end method

.method static synthetic a(Lcom/miui/applicationlock/ChooseAccessControl$e;)I
    .locals 0

    iget p0, p0, Lcom/miui/applicationlock/ChooseAccessControl$e;->a:I

    return p0
.end method

.method static synthetic b(Lcom/miui/applicationlock/ChooseAccessControl$e;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/miui/applicationlock/ChooseAccessControl$e;->b:Z

    return p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/ChooseAccessControl$e;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/applicationlock/ChooseAccessControl$e;

    return-object p0
.end method

.method public static values()[Lcom/miui/applicationlock/ChooseAccessControl$e;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$e;->i:[Lcom/miui/applicationlock/ChooseAccessControl$e;

    invoke-virtual {v0}, [Lcom/miui/applicationlock/ChooseAccessControl$e;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/applicationlock/ChooseAccessControl$e;

    return-object v0
.end method


# virtual methods
.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$e;->a:I

    return-void
.end method
