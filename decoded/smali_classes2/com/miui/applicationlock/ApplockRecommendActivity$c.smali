.class Lcom/miui/applicationlock/ApplockRecommendActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/loader/app/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ApplockRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroidx/loader/app/a$a<",
        "Ljava/util/ArrayList<",
        "Lc3/b;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/applicationlock/ApplockRecommendActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/applicationlock/ApplockRecommendActivity;Lcom/miui/applicationlock/ApplockRecommendActivity$a;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/miui/applicationlock/ApplockRecommendActivity$c;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    return-void
.end method


# virtual methods
.method public F(Lq0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;)V"
        }
    .end annotation

    return-void
.end method

.method public bridge synthetic T(Lq0/c;Ljava/lang/Object;)V
    .locals 0

    check-cast p2, Ljava/util/ArrayList;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/ApplockRecommendActivity$c;->a(Lq0/c;Ljava/util/ArrayList;)V

    return-void
.end method

.method public a(Lq0/c;Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;)V"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/ApplockRecommendActivity;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/miui/applicationlock/ApplockRecommendActivity;->e0(Lcom/miui/applicationlock/ApplockRecommendActivity;)Lz2/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Lz2/c;->o(Ljava/util/List;)V

    invoke-static {p1}, Lcom/miui/applicationlock/ApplockRecommendActivity;->f0(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    return-void
.end method

.method public onCreateLoader(ILandroid/os/Bundle;)Lq0/c;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Lq0/c<",
            "Ljava/util/ArrayList<",
            "Lc3/b;",
            ">;>;"
        }
    .end annotation

    iget-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/miui/applicationlock/ApplockRecommendActivity;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    new-instance p2, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;

    invoke-direct {p2, p0, p1, p1}, Lcom/miui/applicationlock/ApplockRecommendActivity$c$a;-><init>(Lcom/miui/applicationlock/ApplockRecommendActivity$c;Landroid/content/Context;Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    return-object p2
.end method
