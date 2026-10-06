.class final Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$3;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/l<",
        "Ljava/lang/Throwable;",
        "Loj/t;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $s:Lz/c;


# direct methods
.method constructor <init>(Lz/c;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$3;->$s:Lz/c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$3;->invoke(Ljava/lang/Throwable;)V

    sget-object p1, Loj/t;->a:Loj/t;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Throwable;)V
    .locals 0
    .param p1    # Ljava/lang/Throwable;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    iget-object p1, p0, Lcom/miui/earthquakewarning/ui/EarthquakeMainActivityViewModel$getLocation$2$1$1$3;->$s:Lz/c;

    invoke-virtual {p1}, Lz/c;->a()V

    return-void
.end method
