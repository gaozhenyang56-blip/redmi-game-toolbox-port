.class final Landroidx/lifecycle/t0$a;
.super Lbk/n;
.source "SourceFile"

# interfaces
.implements Lak/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/lifecycle/t0;-><init>(Lhk/b;Lak/a;Lak/a;Lak/a;ILbk/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/n;",
        "Lak/a<",
        "Lp0/a$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Landroidx/lifecycle/t0$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroidx/lifecycle/t0$a;

    invoke-direct {v0}, Landroidx/lifecycle/t0$a;-><init>()V

    sput-object v0, Landroidx/lifecycle/t0$a;->a:Landroidx/lifecycle/t0$a;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lbk/n;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Lp0/a$a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lp0/a$a;->b:Lp0/a$a;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Landroidx/lifecycle/t0$a;->a()Lp0/a$a;

    move-result-object v0

    return-object v0
.end method
