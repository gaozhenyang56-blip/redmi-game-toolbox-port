.class Lcom/miui/firstaidkit/FirstAidKitActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/firstaidkit/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/firstaidkit/FirstAidKitActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/FirstAidKitActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Lo5/e;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/firstaidkit/FirstAidKitActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object v1

    const-string v2, "finish"

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lo5/e;->b:Lo5/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lo5/e;->c:Lo5/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lo5/e;->d:Lo5/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lo5/e;->e:Lo5/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->p0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Ljava/util/Map;

    move-result-object p1

    sget-object v1, Lo5/e;->f:Lo5/e;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->t0(Lcom/miui/firstaidkit/FirstAidKitActivity;)Lcom/miui/firstaidkit/a;

    move-result-object p1

    invoke-virtual {p1}, Lcom/miui/firstaidkit/a;->f()I

    move-result p1

    invoke-static {v0, p1}, Lcom/miui/firstaidkit/FirstAidKitActivity;->r0(Lcom/miui/firstaidkit/FirstAidKitActivity;I)I

    new-instance p1, Lcom/miui/firstaidkit/FirstAidKitActivity$g;

    invoke-static {v0}, Lcom/miui/firstaidkit/FirstAidKitActivity;->q0(Lcom/miui/firstaidkit/FirstAidKitActivity;)I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/miui/firstaidkit/FirstAidKitActivity$g;-><init>(Lcom/miui/firstaidkit/FirstAidKitActivity;I)V

    invoke-virtual {v0, p1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method
