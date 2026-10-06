.class Lcom/miui/optimizecenter/storage/StorageActivity$b;
.super Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils$FoldChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/optimizecenter/storage/StorageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/optimizecenter/storage/StorageActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/optimizecenter/storage/StorageActivity;)V
    .locals 1

    invoke-direct {p0}, Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils$FoldChangeListener;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/optimizecenter/storage/StorageActivity$b;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public onDisplayFoldChanged(IZ)V
    .locals 0

    invoke-super {p0, p1, p2}, Lcom/miui/optimizecenter/storage/utils/FoldScreenUtils$FoldChangeListener;->onDisplayFoldChanged(IZ)V

    iget-object p1, p0, Lcom/miui/optimizecenter/storage/StorageActivity$b;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/optimizecenter/storage/StorageActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/optimizecenter/storage/StorageActivity;->e0(Lcom/miui/optimizecenter/storage/StorageActivity;)Lcb/e;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcb/e;->r(Z)V

    return-void
.end method
