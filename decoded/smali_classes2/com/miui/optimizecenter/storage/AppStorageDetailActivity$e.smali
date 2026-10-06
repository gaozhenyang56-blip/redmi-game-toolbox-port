.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "e"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-static {}, Leg/e;->a()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    const-string p1, "AppStorageDetail"

    const-string p2, "ClearDataListener onClick"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsa/b;->g(Z)Lsa/b;

    :cond_1
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->u0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager;

    move-result-object p1

    iget-object p2, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->r0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lwa/a;

    move-result-object p2

    iget-object p2, p2, Lwa/a;->pkgName:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->s0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)I

    move-result v0

    iget-object v1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {v1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->t0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/miui/optimizecenter/storage/AppSystemDataManager;->a(Ljava/lang/String;ILcom/miui/optimizecenter/storage/AppSystemDataManager$AllDataObserver;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->g0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;I)V

    :cond_2
    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$e;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    move-result-object p1

    const/16 p2, -0x3ee

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
