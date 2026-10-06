.class final synthetic Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;
.super Lbk/k;
.source "SourceFile"

# interfaces
.implements Lak/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider;->c(Ljava/lang/String;[I)Landroid/util/SparseBooleanArray;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1000
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbk/k;",
        "Lak/l<",
        "Ljava/lang/String;",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# static fields
.field public static final j:Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;

    invoke-direct {v0}, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;-><init>()V

    sput-object v0, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;->j:Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;

    return-void
.end method

.method constructor <init>()V
    .locals 6

    const-class v2, Lorg/json/JSONObject;

    const/4 v1, 0x1

    const-string v3, "<init>"

    const-string v4, "<init>(Ljava/lang/String;)V"

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lbk/k;-><init>(ILjava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/permcenter/privacymanager/behaviorrecord/PackageBehaviorContentProvider$a;->i(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    return-object p1
.end method
