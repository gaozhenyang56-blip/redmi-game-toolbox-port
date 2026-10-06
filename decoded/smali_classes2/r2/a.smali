.class public Lr2/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:Lcom/miui/antivirus/model/d;

.field private c:Z

.field private d:Lcom/miui/antivirus/model/j$a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(ILcom/miui/antivirus/model/d;ZLcom/miui/antivirus/model/j$a;)Lr2/a;
    .locals 1

    new-instance v0, Lr2/a;

    invoke-direct {v0}, Lr2/a;-><init>()V

    iput p0, v0, Lr2/a;->a:I

    iput-object p1, v0, Lr2/a;->b:Lcom/miui/antivirus/model/d;

    iput-boolean p2, v0, Lr2/a;->c:Z

    iput-object p3, v0, Lr2/a;->d:Lcom/miui/antivirus/model/j$a;

    return-object v0
.end method


# virtual methods
.method public b()Lcom/miui/antivirus/model/d;
    .locals 1

    iget-object v0, p0, Lr2/a;->b:Lcom/miui/antivirus/model/d;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lr2/a;->a:I

    return v0
.end method

.method public d()Lcom/miui/antivirus/model/j$a;
    .locals 1

    iget-object v0, p0, Lr2/a;->d:Lcom/miui/antivirus/model/j$a;

    return-object v0
.end method

.method public e()Z
    .locals 1

    iget-boolean v0, p0, Lr2/a;->c:Z

    return v0
.end method
