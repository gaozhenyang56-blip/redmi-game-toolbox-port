.class public final synthetic Lpf/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/miui/common/card/OnDataChangedListener;


# instance fields
.field public final synthetic a:Lcom/miui/securityscan/MainFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/securityscan/MainFragment;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lpf/f;->a:Lcom/miui/securityscan/MainFragment;

    return-void
.end method


# virtual methods
.method public final onDataChanged(Ljava/util/List;)V
    .locals 1

    iget-object v0, p0, Lpf/f;->a:Lcom/miui/securityscan/MainFragment;

    invoke-static {v0, p1}, Lcom/miui/securityscan/MainFragment;->d0(Lcom/miui/securityscan/MainFragment;Ljava/util/List;)V

    return-void
.end method
