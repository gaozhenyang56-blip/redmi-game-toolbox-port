.class Ljg/e$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljg/e;->T(ZZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Llg/d;

.field final synthetic b:Ljg/e;


# direct methods
.method constructor <init>(Ljg/e;Llg/d;)V
    .locals 0

    iput-object p1, p0, Ljg/e$l;->b:Ljg/e;

    iput-object p2, p0, Ljg/e$l;->a:Llg/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Ljg/e$l;->a:Llg/d;

    invoke-interface {v0}, Llg/d;->e()V

    return-void
.end method
