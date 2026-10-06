.class Lbi/k$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field a:Lcom/qti/flp/IFlpService;

.field final synthetic b:Lbi/k;


# direct methods
.method public constructor <init>(Lbi/k;Lcom/qti/flp/IFlpService;)V
    .locals 0

    iput-object p1, p0, Lbi/k$i;->b:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbi/k$i;->a:Lcom/qti/flp/IFlpService;

    return-void
.end method
