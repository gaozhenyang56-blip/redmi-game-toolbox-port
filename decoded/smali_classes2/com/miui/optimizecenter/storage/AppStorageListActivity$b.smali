.class Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/optimizecenter/storage/AppStorageListActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/lifecycle/d0<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;


# direct methods
.method constructor <init>(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Long;)V
    .locals 3

    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->g0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lra/d;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;->a:Lcom/miui/optimizecenter/storage/AppStorageListActivity;

    invoke-static {v0}, Lcom/miui/optimizecenter/storage/AppStorageListActivity;->g0(Lcom/miui/optimizecenter/storage/AppStorageListActivity;)Lra/d;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lra/d;->k(J)V

    return-void
.end method

.method public bridge synthetic onChanged(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/miui/optimizecenter/storage/AppStorageListActivity$b;->a(Ljava/lang/Long;)V

    return-void
.end method
