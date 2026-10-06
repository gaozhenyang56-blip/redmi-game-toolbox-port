.class final Lt3/g$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lt3/g;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Llk/i0;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Lt3/g$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lt3/g$a;

    invoke-direct {v0}, Lt3/g$a;-><init>()V

    sput-object v0, Lt3/g$a;->a:Lt3/g$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Llk/i0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Llk/j0;->b()Llk/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lt3/g$a;->a()Llk/i0;

    move-result-object v0

    return-object v0
.end method
