.class Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;
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
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;


# direct methods
.method private constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;-><init>(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->q0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lsa/b;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lsa/b;->g(Z)Lsa/b;

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$c;->a:Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;

    invoke-static {p1}, Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;->h0(Lcom/miui/optimizecenter/storage/AppStorageDetailActivity;)Lcom/miui/optimizecenter/storage/AppStorageDetailActivity$i;

    move-result-object p1

    const/16 p2, -0x3ee

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
