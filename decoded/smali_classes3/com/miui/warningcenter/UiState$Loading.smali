.class public final Lcom/miui/warningcenter/UiState$Loading;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/warningcenter/UiState;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/warningcenter/UiState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Loading"
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/warningcenter/UiState$Loading;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/warningcenter/UiState$Loading;

    invoke-direct {v0}, Lcom/miui/warningcenter/UiState$Loading;-><init>()V

    sput-object v0, Lcom/miui/warningcenter/UiState$Loading;->INSTANCE:Lcom/miui/warningcenter/UiState$Loading;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
