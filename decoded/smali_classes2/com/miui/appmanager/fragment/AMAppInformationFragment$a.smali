.class Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;
.super Lw4/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/appmanager/fragment/AMAppInformationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lw4/d<",
        "Lcom/miui/appmanager/fragment/a;",
        ">;"
    }
.end annotation


# instance fields
.field private q:Landroid/content/Context;

.field private r:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/appmanager/fragment/AMAppInformationFragment;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/appmanager/fragment/AMAppInformationFragment;)V
    .locals 0

    invoke-direct {p0, p1}, Lw4/d;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->q:Landroid/content/Context;

    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->r:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public bridge synthetic G()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->J()Lcom/miui/appmanager/fragment/a;

    move-result-object v0

    return-object v0
.end method

.method public J()Lcom/miui/appmanager/fragment/a;
    .locals 3

    iget-object v0, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->r:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/appmanager/fragment/AMAppInformationFragment;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->d0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lx4/f1;->O(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/miui/appmanager/AppManageUtils;->G0(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->c0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/miui/appmanager/fragment/AMAppInformationFragment$a;->q:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->d0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Le3/b;->g(Landroid/content/Context;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/miui/appmanager/fragment/AMAppInformationFragment;->e0(Lcom/miui/appmanager/fragment/AMAppInformationFragment;Landroid/content/Context;Lorg/json/JSONObject;)Lcom/miui/appmanager/fragment/a;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method
