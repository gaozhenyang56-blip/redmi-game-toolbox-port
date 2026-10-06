.class Lta/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lta/a;->e()Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lta/a;


# direct methods
.method constructor <init>(Lta/a;)V
    .locals 0

    iput-object p1, p0, Lta/a$a;->a:Lta/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;)I
    .locals 2

    invoke-virtual {p2}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmUsedTime()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;->getmUsedTime()J

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Long;->compare(JJ)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    check-cast p2, Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;

    invoke-virtual {p0, p1, p2}, Lta/a$a;->a(Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;Lcom/miui/optimizecenter/storage/fbo/UsedPackageBean;)I

    move-result p1

    return p1
.end method
