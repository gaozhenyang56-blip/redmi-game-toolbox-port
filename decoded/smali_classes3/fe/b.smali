.class public Lfe/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/b$a;,
        Lfe/b$b;
    }
.end annotation


# static fields
.field private static c:Ljava/lang/String; = "b"

.field private static d:Lfe/b; = null

.field private static e:I = 0x3

.field private static f:I = 0x3

.field private static g:I = 0x3


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lfe/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe/b;->a:Landroid/content/Context;

    new-instance p1, Lfe/b$a;

    invoke-direct {p1, p0}, Lfe/b$a;-><init>(Lfe/b;)V

    iput-object p1, p0, Lfe/b;->b:Lfe/b$a;

    return-void
.end method

.method static synthetic a(Lfe/b;)Lfe/b$a;
    .locals 0

    iget-object p0, p0, Lfe/b;->b:Lfe/b$a;

    return-object p0
.end method

.method static synthetic b()I
    .locals 1

    sget v0, Lfe/b;->e:I

    return v0
.end method

.method static synthetic c(Lfe/b;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lfe/b;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d()Ljava/lang/String;
    .locals 1

    sget-object v0, Lfe/b;->c:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e()I
    .locals 1

    sget v0, Lfe/b;->f:I

    return v0
.end method

.method static synthetic f()I
    .locals 1

    sget v0, Lfe/b;->g:I

    return v0
.end method

.method public static g(Landroid/content/Context;)Lfe/b;
    .locals 1

    sget-object v0, Lfe/b;->d:Lfe/b;

    if-nez v0, :cond_0

    new-instance v0, Lfe/b;

    invoke-direct {v0, p0}, Lfe/b;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfe/b;->d:Lfe/b;

    :cond_0
    sget-object p0, Lfe/b;->d:Lfe/b;

    return-object p0
.end method

.method public static h(Landroid/content/Context;)V
    .locals 2

    const-string v0, "notification"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    const/4 v0, 0x0

    const v1, 0x7f120f17

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    const v1, 0x7f120f18

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public i()V
    .locals 3

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lgd/c;->X0()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-static {}, Lfe/l;->m()Lfe/l;

    move-result-object v0

    iget-object v1, p0, Lfe/b;->a:Landroid/content/Context;

    new-instance v2, Lfe/b$b;

    invoke-direct {v2, p0}, Lfe/b$b;-><init>(Lfe/b;)V

    invoke-virtual {v0, v1, v2}, Lfe/l;->A(Landroid/content/Context;Lfe/l$c;)V

    return-void
.end method
