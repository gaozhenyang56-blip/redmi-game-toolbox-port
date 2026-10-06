.class Lcom/miui/applicationlock/ApplockRecommendActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lak/l;


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
        "Lak/l<",
        "Ljava/lang/Integer;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/miui/applicationlock/ApplockRecommendActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/ApplockRecommendActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$a;->a:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Integer;)Loj/t;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$a;->a:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-static {v0}, Lcom/miui/applicationlock/ApplockRecommendActivity;->e0(Lcom/miui/applicationlock/ApplockRecommendActivity;)Lz2/c;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lz2/c;->k(I)V

    iget-object p1, p0, Lcom/miui/applicationlock/ApplockRecommendActivity$a;->a:Lcom/miui/applicationlock/ApplockRecommendActivity;

    invoke-static {p1}, Lcom/miui/applicationlock/ApplockRecommendActivity;->f0(Lcom/miui/applicationlock/ApplockRecommendActivity;)V

    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/miui/applicationlock/ApplockRecommendActivity$a;->a(Ljava/lang/Integer;)Loj/t;

    move-result-object p1

    return-object p1
.end method
