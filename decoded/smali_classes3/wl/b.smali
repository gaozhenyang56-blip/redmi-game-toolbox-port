.class public Lwl/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lbl/n;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbl/n<",
            "Lwl/b;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Landroid/content/res/Resources;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lwl/b;->a:Landroid/content/res/Resources;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lwl/b$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lwl/b;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic a(Lwl/b;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lwl/b;->u(Landroid/content/Context;)V

    return-void
.end method

.method public static n(Landroid/content/Context;)Lwl/b;
    .locals 1
    .param p0    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    sget-object v0, Lwl/b;->b:Lbl/n;

    if-nez v0, :cond_0

    new-instance v0, Lwl/b$a;

    invoke-direct {v0}, Lwl/b$a;-><init>()V

    sput-object v0, Lwl/b;->b:Lbl/n;

    :cond_0
    sget-object v0, Lwl/b;->b:Lbl/n;

    invoke-virtual {v0, p0}, Lbl/n;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lwl/b;

    return-object p0
.end method

.method private u(Landroid/content/Context;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lwl/b;->a:Landroid/content/res/Resources;

    return-void
.end method


# virtual methods
.method public b()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->a:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public c()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public d()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->c:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public e()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->d:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public f()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->e:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public g()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->g:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public i()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->h:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public j()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->i:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public k()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->j:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public l()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public m()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->k:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public o()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->l:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public p()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public q()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->m:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public r()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->q:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public s()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->n:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public t()[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lwl/b;->a:Landroid/content/res/Resources;

    sget v1, Lvl/a;->o:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
