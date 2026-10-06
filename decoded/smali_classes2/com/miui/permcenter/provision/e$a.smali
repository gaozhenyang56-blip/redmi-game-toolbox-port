.class public final Lcom/miui/permcenter/provision/e$a;
.super Lcom/miui/permcenter/provision/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/permcenter/provision/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# static fields
.field public static final a:Lcom/miui/permcenter/provision/e$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/provision/e$a;

    invoke-direct {v0}, Lcom/miui/permcenter/provision/e$a;-><init>()V

    sput-object v0, Lcom/miui/permcenter/provision/e$a;->a:Lcom/miui/permcenter/provision/e$a;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/permcenter/provision/e;-><init>(Lbk/g;)V

    return-void
.end method
