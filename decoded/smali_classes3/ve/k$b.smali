.class Lve/k$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/k;->M(Ljava/lang/String;Z)Lcom/miui/gamebooster/model/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/gamebooster/model/ActiveModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lve/k;


# direct methods
.method constructor <init>(Lve/k;)V
    .locals 0

    iput-object p1, p0, Lve/k$b;->a:Lve/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/ActiveModel;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/ActiveModel;->getHasShowTimes()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/ActiveModel;

    check-cast p2, Lcom/miui/gamebooster/model/ActiveModel;

    invoke-virtual {p0, p1, p2}, Lve/k$b;->a(Lcom/miui/gamebooster/model/ActiveModel;Lcom/miui/gamebooster/model/ActiveModel;)I

    move-result p1

    return p1
.end method
