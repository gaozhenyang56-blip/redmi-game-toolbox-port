.class final synthetic Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lb0/a;
.implements Lbk/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation


# instance fields
.field final synthetic $tmp0:Llk/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llk/l<",
            "Landroid/location/Location;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Llk/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Llk/l<",
            "-",
            "Landroid/location/Location;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->$tmp0:Llk/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Landroid/location/Location;)V
    .locals 1

    iget-object v0, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->$tmp0:Llk/l;

    invoke-static {p1}, Loj/m;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {v0, p1}, Ltj/d;->resumeWith(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/location/Location;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->accept(Landroid/location/Location;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    instance-of v0, p1, Lb0/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    instance-of v0, p1, Lbk/h;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->getFunctionDelegate()Loj/d;

    move-result-object v0

    check-cast p1, Lbk/h;

    invoke-interface {p1}, Lbk/h;->getFunctionDelegate()Loj/d;

    move-result-object p1

    invoke-static {v0, p1}, Lbk/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    return v1
.end method

.method public final getFunctionDelegate()Loj/d;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Loj/d<",
            "*>;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v7, Lbk/k;

    iget-object v2, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->$tmp0:Llk/l;

    const-class v3, Ltj/f;

    const/4 v1, 0x1

    const-string v4, "resume"

    const-string v5, "resume(Lkotlin/coroutines/Continuation;Ljava/lang/Object;)V"

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lbk/k;-><init>(ILjava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-object v7
.end method

.method public final hashCode()I
    .locals 1

    invoke-virtual {p0}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$2;->getFunctionDelegate()Loj/d;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method
