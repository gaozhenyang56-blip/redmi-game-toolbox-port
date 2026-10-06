.class public interface abstract Lcom/miui/powerkeeper/IPowerKeeper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/powerkeeper/IPowerKeeper$Stub;,
        Lcom/miui/powerkeeper/IPowerKeeper$Default;
    }
.end annotation


# virtual methods
.method public abstract B7(Landroid/os/Bundle;)I
.end method

.method public abstract D2()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/miui/powerkeeper/ui/AppStateInfo;",
            ">;"
        }
    .end annotation
.end method

.method public abstract M1(Lcom/miui/powerkeeper/ui/IAppActiveUIChangedListener;)V
.end method

.method public abstract X5(I)V
.end method

.method public abstract k5(Lcom/miui/powerkeeper/ui/IAppActiveUIChangedListener;)V
.end method

.method public abstract t0(Landroid/os/Bundle;Landroid/os/Bundle;)I
.end method

.method public abstract t6(Ljava/lang/String;)Z
.end method
