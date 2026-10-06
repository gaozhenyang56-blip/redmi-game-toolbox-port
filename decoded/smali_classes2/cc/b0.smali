.class public final Lcc/b0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/b0$a;
    }
.end annotation


# static fields
.field public static final a:Lcc/b0$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcc/b0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcc/b0$a;-><init>(Lbk/g;)V

    sput-object v0, Lcc/b0;->a:Lcc/b0$a;

    return-void
.end method
