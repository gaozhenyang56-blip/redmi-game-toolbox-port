.class final Lcom/miui/antifraud/d$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/antifraud/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "d"
.end annotation


# static fields
.field private static final a:Lcom/miui/antifraud/d;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/miui/antifraud/d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/antifraud/d;-><init>(Lcom/miui/antifraud/d$a;)V

    sput-object v0, Lcom/miui/antifraud/d$d;->a:Lcom/miui/antifraud/d;

    return-void
.end method

.method static synthetic a()Lcom/miui/antifraud/d;
    .locals 1

    sget-object v0, Lcom/miui/antifraud/d$d;->a:Lcom/miui/antifraud/d;

    return-object v0
.end method
