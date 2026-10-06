.class public Lo5/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lsf/h$b;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/firstaidkit/FirstAidKitActivity;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/miui/firstaidkit/FirstAidKitActivity;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lo5/a;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public m(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lo5/a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/firstaidkit/FirstAidKitActivity;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/miui/firstaidkit/FirstAidKitActivity;->f:Lcom/miui/common/card/CardViewAdapter;

    invoke-static {v0, p1}, Lsf/c;->r(Lcom/miui/common/card/CardViewAdapter;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
