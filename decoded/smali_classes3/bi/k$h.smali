.class public Lbi/k$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbi/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbi/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "h"
.end annotation


# instance fields
.field a:Lcom/qti/debugreport/IDebugReportService;

.field final synthetic b:Lbi/k;


# direct methods
.method public constructor <init>(Lbi/k;Lcom/qti/debugreport/IDebugReportService;)V
    .locals 0

    iput-object p1, p0, Lbi/k$h;->b:Lbi/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbi/k$h;->a:Lcom/qti/debugreport/IDebugReportService;

    return-void
.end method
