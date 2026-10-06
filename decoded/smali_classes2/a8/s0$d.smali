.class final La8/s0$d;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La8/s0;-><init>()V
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
.field public static final a:La8/s0$d;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, La8/s0$d;

    invoke-direct {v0}, La8/s0$d;-><init>()V

    sput-object v0, La8/s0$d;->a:La8/s0$d;

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

    invoke-static {}, Llk/w0;->b()Llk/d0;

    move-result-object v0

    invoke-static {v0}, Llk/j0;->a(Ltj/g;)Llk/i0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, La8/s0$d;->a()Llk/i0;

    move-result-object v0

    return-object v0
.end method
