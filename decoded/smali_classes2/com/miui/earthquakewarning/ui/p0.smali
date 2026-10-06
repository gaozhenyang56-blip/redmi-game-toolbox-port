.class public final synthetic Lcom/miui/earthquakewarning/ui/p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/earthquakewarning/service/ManageAreaDataTask$CallBack;


# instance fields
.field public final synthetic a:Lcom/miui/earthquakewarning/model/AreaCodeResult;

.field public final synthetic b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/p0;->a:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    iput-object p2, p0, Lcom/miui/earthquakewarning/ui/p0;->b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    return-void
.end method


# virtual methods
.method public final onSuccess(Ljava/util/List;)V
    .locals 2

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/p0;->a:Lcom/miui/earthquakewarning/model/AreaCodeResult;

    iget-object v1, p0, Lcom/miui/earthquakewarning/ui/p0;->b:Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;

    invoke-static {v0, v1, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment$getLocation$1;->d(Lcom/miui/earthquakewarning/model/AreaCodeResult;Lcom/miui/earthquakewarning/ui/EarthquakeWarningMainFragment;Ljava/util/List;)V

    return-void
.end method
