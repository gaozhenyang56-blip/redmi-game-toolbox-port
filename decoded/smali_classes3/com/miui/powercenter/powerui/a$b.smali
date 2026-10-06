.class final Lcom/miui/powercenter/powerui/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/powerui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# static fields
.field public static final a:Lcom/miui/powercenter/powerui/a$b;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private static final b:Lcom/miui/powercenter/powerui/a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/powercenter/powerui/a$b;

    invoke-direct {v0}, Lcom/miui/powercenter/powerui/a$b;-><init>()V

    sput-object v0, Lcom/miui/powercenter/powerui/a$b;->a:Lcom/miui/powercenter/powerui/a$b;

    new-instance v0, Lcom/miui/powercenter/powerui/a;

    invoke-direct {v0}, Lcom/miui/powercenter/powerui/a;-><init>()V

    sput-object v0, Lcom/miui/powercenter/powerui/a$b;->b:Lcom/miui/powercenter/powerui/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/powercenter/powerui/a;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/powercenter/powerui/a$b;->b:Lcom/miui/powercenter/powerui/a;

    return-object v0
.end method
