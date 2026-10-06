.class public abstract Lcom/miui/securityscan/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/securityscan/c$d;,
        Lcom/miui/securityscan/c$c;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Lcom/miui/securityscan/c$c;

.field protected e:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/miui/securityscan/d$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/securityscan/c$a;

    invoke-direct {v0, p0}, Lcom/miui/securityscan/c$a;-><init>(Lcom/miui/securityscan/c;)V

    iput-object v0, p0, Lcom/miui/securityscan/c;->f:Lcom/miui/securityscan/d$a;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/securityscan/c;->e:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/miui/securityscan/c;Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/miui/securityscan/c;->g(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Z)V

    return-void
.end method

.method static synthetic b(Lcom/miui/securityscan/c;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/c;->c:Z

    return p1
.end method

.method private g(Lcom/miui/securityscan/model/privacy/PrivacyBaseModel$IdType;Z)V
    .locals 4

    sget-object v0, Lcom/miui/securityscan/c$b;->a:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean p2, p0, Lcom/miui/securityscan/c;->b:Z

    goto :goto_0

    :cond_1
    iput-boolean p2, p0, Lcom/miui/securityscan/c;->a:Z

    :goto_0
    iget-object p1, p0, Lcom/miui/securityscan/c;->d:Lcom/miui/securityscan/c$c;

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/miui/securityscan/c;->c:Z

    new-array v0, v0, [Z

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/miui/securityscan/c;->a:Z

    aput-boolean v3, v0, v2

    iget-boolean v2, p0, Lcom/miui/securityscan/c;->b:Z

    aput-boolean v2, v0, v1

    invoke-interface {p1, p2, v0}, Lcom/miui/securityscan/c$c;->a(Z[Z)V

    :cond_2
    return-void
.end method


# virtual methods
.method protected abstract c()Lcom/miui/securityscan/d;
.end method

.method protected abstract d()Lcom/miui/securityscan/d;
.end method

.method public e()V
    .locals 2

    invoke-virtual {p0}, Lcom/miui/securityscan/c;->d()Lcom/miui/securityscan/d;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/securityscan/c;->f:Lcom/miui/securityscan/d$a;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/d;->b(Lcom/miui/securityscan/d$a;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    :cond_0
    invoke-virtual {p0}, Lcom/miui/securityscan/c;->c()Lcom/miui/securityscan/d;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/miui/securityscan/c;->f:Lcom/miui/securityscan/d$a;

    invoke-virtual {v0, v1}, Lcom/miui/securityscan/d;->b(Lcom/miui/securityscan/d$a;)V

    invoke-static {v0}, Lx4/f;->b(Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method

.method public f(Lcom/miui/securityscan/c$c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/c;->d:Lcom/miui/securityscan/c$c;

    return-void
.end method
