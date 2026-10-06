.class public final synthetic Lk3/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    check-cast p2, Lcom/miui/apppredict/bean/AppClassificationContentBean;

    invoke-static {p1, p2}, Lcom/miui/apppredict/activity/AppClassificationActivity;->n0(Lcom/miui/apppredict/bean/AppClassificationContentBean;Lcom/miui/apppredict/bean/AppClassificationContentBean;)I

    move-result p1

    return p1
.end method
