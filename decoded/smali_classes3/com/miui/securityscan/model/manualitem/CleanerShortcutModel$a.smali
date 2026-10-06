.class Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;
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
            "Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/common/base/BaseActivity;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p3, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->c:Ljava/lang/String;

    instance-of p3, p1, Lcom/miui/common/base/BaseActivity;

    if-eqz p3, :cond_0

    new-instance p3, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/miui/common/base/BaseActivity;

    invoke-direct {p3, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->b:Ljava/lang/ref/WeakReference;

    :cond_0
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    sget-object v1, Lcom/miui/securityscan/shortcut/d$b;->d:Lcom/miui/securityscan/shortcut/d$b;

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->q(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0, v1}, Lcom/miui/securityscan/shortcut/d;->c(Landroid/content/Context;Lcom/miui/securityscan/shortcut/d$b;)V

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->c:Ljava/lang/String;

    invoke-static {v0}, Lc4/i$a;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;

    if-eqz v0, :cond_1

    new-instance v1, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$b;

    iget-object v2, p0, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$a;->b:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2, v0}, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel$b;-><init>(Ljava/lang/ref/WeakReference;Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;)V

    invoke-static {v0, v1}, Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;->access$000(Lcom/miui/securityscan/model/manualitem/CleanerShortcutModel;Ljava/lang/Runnable;)V

    :cond_1
    return-void
.end method
