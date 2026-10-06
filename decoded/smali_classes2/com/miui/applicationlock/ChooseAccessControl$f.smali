.class public final enum Lcom/miui/applicationlock/ChooseAccessControl$f;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ChooseAccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/miui/applicationlock/ChooseAccessControl$f;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum f:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field public static final enum g:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field public static final enum h:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field public static final enum i:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field public static final enum j:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field public static final enum k:Lcom/miui/applicationlock/ChooseAccessControl$f;

.field private static final synthetic l:[Lcom/miui/applicationlock/ChooseAccessControl$f;


# instance fields
.field a:I

.field b:Lcom/miui/applicationlock/ChooseAccessControl$d;

.field c:Lcom/miui/applicationlock/ChooseAccessControl$e;

.field final d:I

.field final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 21

    new-instance v8, Lcom/miui/applicationlock/ChooseAccessControl$f;

    sget-object v9, Lcom/miui/applicationlock/ChooseAccessControl$d;->i:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v10, Lcom/miui/applicationlock/ChooseAccessControl$e;->h:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v1, "Introduction"

    const/4 v2, 0x0

    const v3, 0x7f10006d

    const/4 v6, -0x1

    const/4 v7, 0x1

    move-object v0, v8

    move-object v4, v9

    move-object v5, v10

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v8, Lcom/miui/applicationlock/ChooseAccessControl$f;->f:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v11, Lcom/miui/applicationlock/ChooseAccessControl$f;

    const-string v1, "ChoiceTooShort"

    const/4 v2, 0x1

    const v3, 0x7f10006c

    move-object v0, v11

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v11, Lcom/miui/applicationlock/ChooseAccessControl$f;->g:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v12, Lcom/miui/applicationlock/ChooseAccessControl$f;

    const-string v1, "FirstChoiceValid"

    const/4 v2, 0x2

    const v3, 0x7f120cc7

    const/4 v7, 0x0

    move-object v0, v12

    invoke-direct/range {v0 .. v7}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v12, Lcom/miui/applicationlock/ChooseAccessControl$f;->h:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v0, Lcom/miui/applicationlock/ChooseAccessControl$f;

    sget-object v1, Lcom/miui/applicationlock/ChooseAccessControl$d;->e:Lcom/miui/applicationlock/ChooseAccessControl$d;

    sget-object v2, Lcom/miui/applicationlock/ChooseAccessControl$e;->f:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v14, "NeedToConfirm"

    const/4 v15, 0x3

    const v16, 0x7f120cc4

    const/16 v19, -0x1

    const/16 v20, 0x1

    move-object v13, v0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-direct/range {v13 .. v20}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->i:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v3, Lcom/miui/applicationlock/ChooseAccessControl$f;

    const-string v14, "ConfirmWrong"

    const/4 v15, 0x4

    const v16, 0x7f120cc5

    move-object v13, v3

    invoke-direct/range {v13 .. v20}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v3, Lcom/miui/applicationlock/ChooseAccessControl$f;->j:Lcom/miui/applicationlock/ChooseAccessControl$f;

    new-instance v2, Lcom/miui/applicationlock/ChooseAccessControl$f;

    sget-object v18, Lcom/miui/applicationlock/ChooseAccessControl$e;->e:Lcom/miui/applicationlock/ChooseAccessControl$e;

    const-string v14, "ChoiceConfirmed"

    const/4 v15, 0x5

    const v16, 0x7f120cc6

    const/16 v20, 0x0

    move-object v13, v2

    invoke-direct/range {v13 .. v20}, Lcom/miui/applicationlock/ChooseAccessControl$f;-><init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V

    sput-object v2, Lcom/miui/applicationlock/ChooseAccessControl$f;->k:Lcom/miui/applicationlock/ChooseAccessControl$f;

    const/4 v1, 0x6

    new-array v1, v1, [Lcom/miui/applicationlock/ChooseAccessControl$f;

    const/4 v4, 0x0

    aput-object v8, v1, v4

    const/4 v4, 0x1

    aput-object v11, v1, v4

    const/4 v4, 0x2

    aput-object v12, v1, v4

    const/4 v4, 0x3

    aput-object v0, v1, v4

    const/4 v0, 0x4

    aput-object v3, v1, v0

    const/4 v0, 0x5

    aput-object v2, v1, v0

    sput-object v1, Lcom/miui/applicationlock/ChooseAccessControl$f;->l:[Lcom/miui/applicationlock/ChooseAccessControl$f;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/miui/applicationlock/ChooseAccessControl$d;Lcom/miui/applicationlock/ChooseAccessControl$e;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/miui/applicationlock/ChooseAccessControl$d;",
            "Lcom/miui/applicationlock/ChooseAccessControl$e;",
            "IZ)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    iput-object p4, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    iput-object p5, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    iput p6, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->d:I

    iput-boolean p7, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->e:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/miui/applicationlock/ChooseAccessControl$f;
    .locals 1

    const-class v0, Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/miui/applicationlock/ChooseAccessControl$f;

    return-object p0
.end method

.method public static values()[Lcom/miui/applicationlock/ChooseAccessControl$f;
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/ChooseAccessControl$f;->l:[Lcom/miui/applicationlock/ChooseAccessControl$f;

    invoke-virtual {v0}, [Lcom/miui/applicationlock/ChooseAccessControl$f;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/miui/applicationlock/ChooseAccessControl$f;

    return-object v0
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->a:I

    return-void
.end method

.method public b(Lcom/miui/applicationlock/ChooseAccessControl$d;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->b:Lcom/miui/applicationlock/ChooseAccessControl$d;

    return-void
.end method

.method public c(Lcom/miui/applicationlock/ChooseAccessControl$e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ChooseAccessControl$f;->c:Lcom/miui/applicationlock/ChooseAccessControl$e;

    return-void
.end method
