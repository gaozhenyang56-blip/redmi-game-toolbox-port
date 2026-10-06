.class public Ldf/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ldf/b$b;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/ComponentName;

.field private final c:Landroid/os/Handler;

.field private final d:Landroid/database/ContentObserver;

.field private e:Ldf/b$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldf/b;->a:Landroid/content/Context;

    iput-object p2, p0, Ldf/b;->c:Landroid/os/Handler;

    const-string p1, "com.miui.handwriting/.service.MiuiHandWritingAccessibilityService"

    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Ldf/b;->b:Landroid/content/ComponentName;

    new-instance p1, Ldf/b$a;

    invoke-direct {p1, p0, p2}, Ldf/b$a;-><init>(Ldf/b;Landroid/os/Handler;)V

    iput-object p1, p0, Ldf/b;->d:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic a(Ldf/b;)Ldf/b$b;
    .locals 0

    iget-object p0, p0, Ldf/b;->e:Ldf/b$b;

    return-object p0
.end method


# virtual methods
.method public b()V
    .locals 3

    iget-object v0, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/permcenter/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/permcenter/q;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Ldf/b;->a:Landroid/content/Context;

    iget-object v1, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/permcenter/q;->g(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d()Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Ldf/b;->b:Landroid/content/ComponentName;

    return-object v0
.end method

.method public e()Z
    .locals 3

    iget-object v0, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ldf/b;->b:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/permcenter/q;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-static {v2, v0, v1}, Lcom/miui/permcenter/q;->l(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public f(Ldf/b$b;)V
    .locals 4

    iget-object v0, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_accessibility_services"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Ldf/b;->d:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iput-object p1, p0, Ldf/b;->e:Ldf/b$b;

    return-void
.end method

.method public g()V
    .locals 2

    iget-object v0, p0, Ldf/b;->d:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldf/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Ldf/b;->d:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
