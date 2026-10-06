.class public Lfe/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lfe/d$c;,
        Lfe/d$d;
    }
.end annotation


# static fields
.field private static c:Lfe/d;


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lo4/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfe/d;->a:Landroid/content/Context;

    invoke-static {p1}, Lo4/a;->c(Landroid/content/Context;)Lo4/a;

    move-result-object p1

    iput-object p1, p0, Lfe/d;->b:Lo4/a;

    return-void
.end method

.method static synthetic a(Lfe/d;)Lo4/a;
    .locals 0

    iget-object p0, p0, Lfe/d;->b:Lo4/a;

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lfe/d;
    .locals 1

    sget-object v0, Lfe/d;->c:Lfe/d;

    if-nez v0, :cond_0

    new-instance v0, Lfe/d;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lfe/d;-><init>(Landroid/content/Context;)V

    sput-object v0, Lfe/d;->c:Lfe/d;

    :cond_0
    sget-object p0, Lfe/d;->c:Lfe/d;

    return-object p0
.end method


# virtual methods
.method public c(Lfe/d$d;)V
    .locals 3

    iget-object v0, p0, Lfe/d;->b:Lo4/a;

    iget-object v1, p0, Lfe/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfe/d$b;

    invoke-direct {v2, p0, p1}, Lfe/d$b;-><init>(Lfe/d;Lfe/d$d;)V

    const-string p1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {v0, p1, v1, v2}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    return-void
.end method

.method public d(Lfe/d$c;)V
    .locals 3

    iget-object v0, p0, Lfe/d;->b:Lo4/a;

    iget-object v1, p0, Lfe/d;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lfe/d$a;

    invoke-direct {v2, p0, p1}, Lfe/d$a;-><init>(Lfe/d;Lfe/d$c;)V

    const-string p1, "miui.intent.action.MEMORY_CHECK_SERVICE"

    invoke-virtual {v0, p1, v1, v2}, Lo4/a;->d(Ljava/lang/String;Ljava/lang/String;Lo4/a$a;)Z

    return-void
.end method
