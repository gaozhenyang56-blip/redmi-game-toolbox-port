.class Lve/k$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lve/k;->N(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/gamebooster/model/ActiveNewModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lve/k;


# direct methods
.method constructor <init>(Lve/k;)V
    .locals 0

    iput-object p1, p0, Lve/k$c;->a:Lve/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/gamebooster/model/ActiveNewModel;)I
    .locals 0

    invoke-virtual {p1}, Lcom/miui/gamebooster/model/ActiveModel;->getPriority()I

    move-result p1

    invoke-virtual {p2}, Lcom/miui/gamebooster/model/ActiveModel;->getPriority()I

    move-result p2

    invoke-static {p1, p2}, Ljava/lang/Integer;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/gamebooster/model/ActiveNewModel;

    check-cast p2, Lcom/miui/gamebooster/model/ActiveNewModel;

    invoke-virtual {p0, p1, p2}, Lve/k$c;->a(Lcom/miui/gamebooster/model/ActiveNewModel;Lcom/miui/gamebooster/model/ActiveNewModel;)I

    move-result p1

    return p1
.end method
