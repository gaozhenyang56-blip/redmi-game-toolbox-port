.class public final Lcom/miui/powercenter/powerui/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/powercenter/powerui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lbk/g;)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/powerui/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/miui/powercenter/powerui/a;
    .locals 1
    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    sget-object v0, Lcom/miui/powercenter/powerui/a$b;->a:Lcom/miui/powercenter/powerui/a$b;

    invoke-virtual {v0}, Lcom/miui/powercenter/powerui/a$b;->a()Lcom/miui/powercenter/powerui/a;

    move-result-object v0

    return-object v0
.end method
