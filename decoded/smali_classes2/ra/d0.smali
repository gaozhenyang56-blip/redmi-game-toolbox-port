.class public final synthetic Lra/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/lifecycle/d0;


# instance fields
.field public final synthetic a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/optimizecenter/storage/StorageFragmentWork;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lra/d0;->a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;

    return-void
.end method


# virtual methods
.method public final onChanged(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lra/d0;->a:Lcom/miui/optimizecenter/storage/StorageFragmentWork;

    check-cast p1, Ljava/util/Set;

    invoke-static {v0, p1}, Lcom/miui/optimizecenter/storage/StorageFragmentWork;->f0(Lcom/miui/optimizecenter/storage/StorageFragmentWork;Ljava/util/Set;)V

    return-void
.end method
