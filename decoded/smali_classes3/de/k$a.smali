.class Lde/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lde/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lde/k;


# direct methods
.method constructor <init>(Lde/k;)V
    .locals 0

    iput-object p1, p0, Lde/k$a;->a:Lde/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lde/k$a;->a:Lde/k;

    invoke-static {v0}, Lde/k;->a(Lde/k;)V

    return-void
.end method
