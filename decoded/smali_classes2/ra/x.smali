.class public final synthetic Lra/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/StorageFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/StorageFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/x;->a:Lcom/miui/optimizecenter/storage/StorageFragment;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lra/x;->a:Lcom/miui/optimizecenter/storage/StorageFragment;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/miui/optimizecenter/storage/StorageFragment;->b0(Lcom/miui/optimizecenter/storage/StorageFragment;Ljava/util/Set;)V

    return-void
.end method
