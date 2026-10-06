.class Lc4/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc4/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc4/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/app/Activity;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/content/Intent;

.field private c:I

.field private d:Landroid/os/Bundle;

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lc4/f$a;->a:Ljava/lang/ref/WeakReference;

    iput-object p2, p0, Lc4/f$a;->b:Landroid/content/Intent;

    iput p3, p0, Lc4/f$a;->c:I

    iput-object p4, p0, Lc4/f$a;->d:Landroid/os/Bundle;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lc4/f$a;->e:Z

    const/4 p1, 0x0

    iput-boolean p1, p0, Lc4/f$a;->f:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lc4/f$a;->b:Landroid/content/Intent;

    instance-of p2, p1, Landroid/app/Activity;

    if-eqz p2, :cond_0

    new-instance p2, Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Activity;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lc4/f$a;->a:Ljava/lang/ref/WeakReference;

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lc4/f$a;->e:Z

    iput-boolean p3, p0, Lc4/f$a;->f:Z

    return-void
.end method


# virtual methods
.method public a(ZI)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p1, 0x0

    iget-object p2, p0, Lc4/f$a;->a:Ljava/lang/ref/WeakReference;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/Activity;

    :cond_1
    if-eqz p1, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_4

    invoke-virtual {p1}, Landroid/app/Activity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean p2, p0, Lc4/f$a;->e:Z

    if-eqz p2, :cond_3

    iget-object p2, p0, Lc4/f$a;->b:Landroid/content/Intent;

    iget v0, p0, Lc4/f$a;->c:I

    iget-object v1, p0, Lc4/f$a;->d:Landroid/os/Bundle;

    invoke-static {p1, p2, v0, v1}, Lc4/f;->b(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lc4/f$a;->b:Landroid/content/Intent;

    invoke-static {p1, p2}, Lc4/f;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-boolean p1, p0, Lc4/f$a;->e:Z

    if-nez p1, :cond_5

    iget-boolean p1, p0, Lc4/f$a;->f:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lc4/f$a;->b:Landroid/content/Intent;

    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object p1

    iget-object p2, p0, Lc4/f$a;->b:Landroid/content/Intent;

    invoke-static {p1, p2}, Lc4/f;->a(Landroid/content/Context;Landroid/content/Intent;)V

    :cond_5
    return-void
.end method
