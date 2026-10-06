.class public Lbi/k$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi/h;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "k"
.end annotation


# instance fields
.field a:Lcom/qti/gnssconfig/IGnssConfigService;

.field final synthetic b:Lbi/k;


# direct methods
.method public constructor <init>(Lbi/k;Lcom/qti/gnssconfig/IGnssConfigService;)V
    .locals 0

    iput-object p1, p0, Lbi/k$k;->b:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbi/k$k;->a:Lcom/qti/gnssconfig/IGnssConfigService;

    return-void
.end method
