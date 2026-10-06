.class Lcom/miui/applicationlock/ApplockRecommendActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/applicationlock/ApplockRecommendActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lc3/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ApplockRecommendActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$b;->a:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lc3/b;Lc3/b;)I
    .locals 1

    sget-object v0, Lcom/miui/applicationlock/AppLockManageFragment;->K:Ljava/util/ArrayList;

    invoke-virtual {p1}, Lc3/b;->e()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {p2}, Lc3/b;->e()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lc3/b;

    check-cast p2, Lc3/b;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/ApplockRecommendActivity$b;->a(Lc3/b;Lc3/b;)I

    move-result p1

    return p1
.end method
