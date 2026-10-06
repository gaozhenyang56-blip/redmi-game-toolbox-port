.class public final Lcom/miui/networkassistant/identifer/IdentiferImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/networkassistant/identifer/Identifer;


# annotations
.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nIdentiferImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IdentiferImpl.kt\ncom/miui/networkassistant/identifer/IdentiferImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,13:1\n1#2:14\n*E\n"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/miui/networkassistant/identifer/IdentiferImpl;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/networkassistant/identifer/IdentiferImpl;

    invoke-direct {v0}, Lcom/miui/networkassistant/identifer/IdentiferImpl;-><init>()V

    sput-object v0, Lcom/miui/networkassistant/identifer/IdentiferImpl;->INSTANCE:Lcom/miui/networkassistant/identifer/IdentiferImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIdentifer()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    invoke-static {}, Lcom/miui/securitycenter/Application;->A()Lcom/miui/securitycenter/Application;

    move-result-object v0

    invoke-static {v0}, Lef/w;->a(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    return-object v0

    :cond_1
    const-string v0, ""

    return-object v0
.end method
