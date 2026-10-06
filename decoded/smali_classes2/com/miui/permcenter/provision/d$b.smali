.class public final Lcom/miui/permcenter/provision/d$b;
.super Lcom/miui/permcenter/provision/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/provision/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/miui/permcenter/provision/d$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/provision/d$b;

    invoke-direct {v0}, Lcom/miui/permcenter/provision/d$b;-><init>()V

    sput-object v0, Lcom/miui/permcenter/provision/d$b;->a:Lcom/miui/permcenter/provision/d$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/provision/d;-><init>(Lbk/g;)V

    return-void
.end method
