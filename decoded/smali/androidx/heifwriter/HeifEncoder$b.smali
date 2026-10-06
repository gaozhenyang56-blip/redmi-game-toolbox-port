.class Landroidx/heifwriter/HeifEncoder$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/heifwriter/HeifEncoder;->close()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/heifwriter/HeifEncoder;


# direct methods
.method constructor <init>(Landroidx/heifwriter/HeifEncoder;)V
    .locals 0

    iput-object p1, p0, Landroidx/heifwriter/HeifEncoder$b;->a:Landroidx/heifwriter/HeifEncoder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Landroidx/heifwriter/HeifEncoder$b;->a:Landroidx/heifwriter/HeifEncoder;

    invoke-virtual {v0}, Landroidx/heifwriter/HeifEncoder;->t()V

    return-void
.end method
